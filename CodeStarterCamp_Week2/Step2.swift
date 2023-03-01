//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by MARY on 2023/03/01.
//

import Foundation

func generateLotteryNumbers() -> Set<Int> {
    var winningNumbers: Set<Int> = []

    while winningNumbers.count < 6 {
        winningNumbers.insert(Int.random(in: 1...45))
    }

    return winningNumbers
}

func compareLotteryNumbers(target: Array<Int>, to winning: Set<Int>) {
    let matchedNumbers = winning.intersection(target).sorted()
    
    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        printAllElements(of: matchedNumbers)
        print("입니다!")
    }
}

func printAllElements(of array: Array<Int>) {
    for (index, number) in array.enumerated() {
        if index == array.count-1 {
            print(number, terminator: " ")
        } else {
            print(number, terminator: ", ")
        }
    }
}
