//
//  generateLottoNumber.swift.swift
//  CodeStarterCamp_Week2
//
//  Created by 유연수 on 2022/04/28.
//

import Foundation

var allNumber: [Int] = []
var winningNumbers: Set<Int> = Set<Int>()

func generateLottoNumbers(numberOfWinningNumbers: Int = 6) {
    for number in 1...45 {
        allNumber.append(number)
    }
    
    while winningNumbers.count < numberOfWinningNumbers {
        if let randomNumber = allNumber.randomElement() {
            winningNumbers.insert(randomNumber)
        }
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
    switch matchedNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1:
        print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]) 입니다!")
    case 2...winningNumbers.count:
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0..<matchedNumbers.count {
            // 결과 출력시 마지막 숫자 뒤에는 구분자가 없어야 하므로 마지막 인덱스일 경우, terminator: ""
            if index == matchedNumbers.index(before: matchedNumbers.endIndex) {
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
