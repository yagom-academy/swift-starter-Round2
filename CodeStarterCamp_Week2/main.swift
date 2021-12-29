//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var winningNumbers: Set<Int> = []
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var randomNumber: Int = 0


func createRandomNumber() -> Int {
    randomNumber = Int.random(in: 1...45)
    return randomNumber
}

func createWinningNumbers() -> Set<Int> {
    
    while winningNumbers.count < 6 {
        randomNumber = createRandomNumber()
        winningNumbers.insert(randomNumber)
    }
    print("당첨 번호: \(winningNumbers)")
    return winningNumbers
}

func removeLastComma(phrase: String) -> String {
    guard let indexOfLastComma = phrase.lastIndex(of: ",") else { return phrase }
    let filteredPhrase = phrase[..<indexOfLastComma]
    return String(filteredPhrase)
}

// 삼항 연산자 >> (condition) ? a : b
// nil-coalescing >> optional<T> ?? default(value)


func compareLottoNumbers(_ winningNumbers: Set<Int>, _ myNumbers: [Int]) -> String {
    var matchedNumbers: String = ""
    
    if myNumbers.count < 1 || myNumbers.count > 7 {
        return "로또 번호를 입력하지 않았거나, 너무 많은 번호가 있습니다."
    } else {
        for myNumber in myNumbers {
            if winningNumbers.contains(myNumber) {
                matchedNumbers += "\(myNumber), "
            } else {
                continue
            }
        }
        if matchedNumbers.count > 0 {
            let matchedNumbersResult = "축하합니다! 겹치는 번호는 \(removeLastComma(phrase: matchedNumbers)) 입니다!"
            return matchedNumbersResult
        } else {
            return "아쉽지만 겹치는 번호가 없습니다."
        }
    }
}

func checkLotto(myNumbers: [Int]) {
    let winningNumbers = createWinningNumbers()
    print(compareLottoNumbers(winningNumbers, myNumbers))
}

checkLotto(myNumbers: myLottoNumbers)








