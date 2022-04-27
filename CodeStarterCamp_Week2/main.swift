//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var allNumberSet: Set<Int> = Set<Int>()
var winningNumbers: Set<Int> = Set<Int>()

func generateLottoNumber() {
    
    for number in 1...45 {
        allNumberSet.insert(number)
    }
    
    while winningNumbers.count < 6 {
        winningNumbers.insert(allNumberSet.randomElement() ?? 0)
    }
}

var myLottoNumbers: [Int] = [15, 26, 31, 4, 12, 7]

func matchLottoNumbers() {
    
    var matchedNumbers: [Int] = []
    
    for index in 0..<myLottoNumbers.count {
        if winningNumbers.contains(myLottoNumbers[index]) {
            matchedNumbers.append(myLottoNumbers[index])
        }
    }
    
    switch matchedNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1:
        print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]) 입니다!")
    case 2...winningNumbers.count:
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0..<matchedNumbers.count {
            if index != (matchedNumbers.count - 1) {
                print(matchedNumbers[index], terminator: ", ")
            } else {
                print(matchedNumbers[index], terminator: "")
            }
        }
        print(" 입니다!")
    default:
        print("unknown")
    }
}

generateLottoNumber()
matchLottoNumbers()
