//
//  generateLottoNumber.swift.swift
//  CodeStarterCamp_Week2
//
//  Created by 유연수 on 2022/04/28.
//

import Foundation

var winningNumbers: [Int] = []

func generateLottoNumbers(numberOfWinningNumbers: Int = 6) {
    winningNumbers.removeAll()
    
    while winningNumbers.count < numberOfWinningNumbers {
        let randomNumber = Int.random(in: 1...45)
        
        if winningNumbers.contains(randomNumber) == false {
            winningNumbers.append(randomNumber)
        }
    }
    
    saveLottoResult(winningNumbers: winningNumbers)
}

var lottoHistory: [String: [Int]] = [:]

func saveLottoResult(winningNumbers: [Int]) {
    let round = lottoHistory.count + 1
    lottoHistory["\(round)회차"] = winningNumbers
}

func printLottoHistory(round: Int) {
    if let value: [Int] = lottoHistory["\(round)회차"] {
        let lastIndex: Int = value.index(before: value.endIndex)
        
        print("\(round)회차의 로또 당첨 번호는 ", terminator: "")
        for index in 0...lastIndex {
            if index == lastIndex {
                print(value[index], terminator: "")
            } else {
                print(value[index], terminator: ", ")
            }
        }
        print(" 입니다.")
    }
}

let myLottoNumbers: [Int] = [15, 26, 31, 4, 12, 7]
var matchedNumbers: [Int] = []

func matchLottoNumbers() {
    for index in 0..<myLottoNumbers.count {
        if winningNumbers.contains(myLottoNumbers[index]) {
            matchedNumbers.append(myLottoNumbers[index])
        }
    }
}

func printLottoResult() {
    let lastIndex = matchedNumbers.index(before: matchedNumbers.endIndex)
    
    switch matchedNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1:
        print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]) 입니다!")
    case 2...winningNumbers.count:
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0..<matchedNumbers.count {
            if index == lastIndex {
                print(matchedNumbers[index], terminator: "")
            } else {
                print(matchedNumbers[index], terminator: ", ")
            }
        }
        print(" 입니다!")
    default:
        break
    }
}
