//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var allLottoNumbers: [String: [Int]] = [:]

for _ in 1...5 {
    let winLottoNumbers: [Int] = makeLottoNumbers()
    makeAllLottoNumbers(with: winLottoNumbers)
}

if let allLottoNumbers = allLottoNumbers["2회차"] {
    let mySecondWinLottoNumbers: [Int] = compareLottoNumbers(by: allLottoNumbers , with: myLottoNumbers)
    printLottoNumbers(by: mySecondWinLottoNumbers, round: 2)
}

func makeLottoNumbers() -> [Int] {
    var winNumbers: [Int] = []
    
    while winNumbers.count < 6 {
        let winNumber = Int.random(in: 1...45)
        if !winNumbers.contains(winNumber) {
            winNumbers.append(winNumber)
        }
    }
    return winNumbers
}

func makeAllLottoNumbers(with winLottoNumbers: [Int]) {
    allLottoNumbers["\(allLottoNumbers.count)회차"] = winLottoNumbers
}

func compareLottoNumbers(by winLottoNumbers: [Int], with myLottoNumbers: [Int]) -> [Int] {
    var myWinNumber: [Int] = []
    
    for number in winLottoNumbers {
        if myLottoNumbers.contains(number) {
            myWinNumber.append(number)
        }
    }
    return myWinNumber
}

func printLottoNumbers(by winNumber: [Int], round: Int) {
    var resultString: String = ""
    
    for result in winNumber {
        if winNumber.first == result {
            resultString.append("\(result)")
        } else {
            resultString.append(", \(result)")
        }
    }
    winNumber.isEmpty ? print("아쉽지만 겹치는 번호가 없습니다.") : print("\(round)회차의 로또 당첨 번호는 \(resultString) 입니다!")
}
