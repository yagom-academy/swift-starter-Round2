//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLotteryNumber() -> Set<Int> {
    var lotteryNumbers: Set<Int> = []

    while lotteryNumbers.count < 6 {
        lotteryNumbers.insert(Int.random(in: 1...45))
    }

    return lotteryNumbers
}

func compareLotteryNumber(myNumbers: Array<Int>, lotteryNumbers: Set<Int>) {
    let bothMineAndLottery = lotteryNumbers.intersection(myNumbers).sorted()
    
    if bothMineAndLottery.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        printAllElementsOf(bothMineAndLottery)
        print("입니다!")
    }
}

func printAllElementsOf(_ array: Array<Int>) {
    for (index, number) in array.enumerated() {
        if index == array.count-1 {
            print(number, terminator: " ")
        } else {
            print(number, terminator: ", ")
        }
    }
}

let myLottoNumbers: [Int] = [1,2,3,4,5,6]
compareLotteryNumber(myNumbers: myLottoNumbers, lotteryNumbers: generateLotteryNumber())


