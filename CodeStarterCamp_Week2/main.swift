//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: [Int] = []
myLottoNumbers = [1, 2, 3, 4, 5, 6]

checkWinningLottoNumbers(myNumbers: myLottoNumbers, winnigNumbers: makeLottoNumbers())

var listWinnigLottoNumbers: [String: Set<Int>] = [:]

for _ in 1...5 {
    saveWinningLottoNumbers(winnigNumbers: makeLottoNumbers())
}

printWinningNumbersFor(round: 2)

func printWinningNumbersFor(round: Int) {
    let roundString = makeRoundCountString(roundCount: round)
    
    if let winnigNumbers = listWinnigLottoNumbers[roundString] {
        print("\(roundString)의 로또 당첨 번호는 " + makePrintIntersectionNumbers(intersectionNumbers: winnigNumbers) + " 입니다.")
    }
}

func saveWinningLottoNumbers(winnigNumbers: Set<Int>) {
    let roundCountString = makeRoundCountString(roundCount: listWinnigLottoNumbers.count + 1)
    
    listWinnigLottoNumbers[roundCountString] = winnigNumbers
}

func makeRoundCountString(roundCount: Int) -> String {
    return String(roundCount) + "회차"
}

func makePrintIntersectionNumbers(intersectionNumbers: Set<Int>) -> String {
    let returnNumbers = intersectionNumbers.sorted()
    
    return returnNumbers.map { String($0) }.joined(separator: ", ")
}

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let oneLottoNumber: Int = Int.random(in: 1...45)
        lottoNumbers.insert(oneLottoNumber)
    }
    
    return lottoNumbers
}

func checkWinningLottoNumbers(myNumbers: Array<Int>, winnigNumbers: Set<Int> ) {
    let changedMyNumbers = Set(myNumbers)
    let intersectionNumbers: Set<Int> = winnigNumbers.intersection(changedMyNumbers)
   
    print(makeReturnMessage(intersectionNumbers: intersectionNumbers))
}

func makeReturnMessage(intersectionNumbers: Set<Int>) -> String {
    var returnMessage = ""
    
    if intersectionNumbers.isEmpty {
        returnMessage = "아쉽지만 겹치는 번호가 없습니다."
    } else {
        returnMessage = "축하합니다! 겹치는 번호는 " + makePrintIntersectionNumbers(intersectionNumbers: intersectionNumbers) + " 입니다!"
    }
    
    return returnMessage
}
