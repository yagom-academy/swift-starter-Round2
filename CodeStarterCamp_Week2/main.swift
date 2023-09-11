//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeWinningNumbers() -> Array<Int> {
    var pickedNumbers: [Int] = []
    
    while pickedNumbers.count < 6 {
        let pickedNumber = Int.random(in: 1...45)
        if !pickedNumbers.contains(pickedNumber) {
            pickedNumbers.append(pickedNumber)
        } else {
            continue
        }
    }
    pickedNumbers.sort()
    return pickedNumbers
    }
    
var winningNumbers = makeWinningNumbers()
print("당첨 번호는 \(winningNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")

let myLottoNumbers: [Int] = [11, 22, 33, 44, 45, 46]

func checkingNumbers(){
    var matchedNumbers: [Int] = []

    for myNumber in myLottoNumbers {
        if winningNumbers.contains(myNumber) {
            matchedNumbers.append(myNumber)
        }
    }
    if matchedNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers.map {String($0)}.joined(separator: ", "))로 \(matchedNumbers.count)개 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkingNumbers()

var lottoResults: [String: [Int]] = [:]

func generateLottoResults() {
    for round in 1...5 {
        let winningNumbers = makeWinningNumbers()
        let roundKey = "\(round)회차"
        lottoResults[roundKey] = winningNumbers
        print("\(round)회차의 로또 당첨 번호는 \(winningNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")
    }
}
generateLottoResults()

func printLottoResults(round: String) {
    guard let matchedNumbers = lottoResults[round] else {
        print("\(round)의 로또 당첨 번호를 찾을 수 없습니다.")
        return
    }
    
    print("\(round)의 로또 당첨 번호는 \(matchedNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")
}

printLottoResults(round: "2회차")

