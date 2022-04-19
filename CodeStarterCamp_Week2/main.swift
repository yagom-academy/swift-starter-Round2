//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLotteryNumbers() -> Array<Int> {
    var lotteryNumbers: Set<Int> = Set<Int>()
    while lotteryNumbers.count < 6 {
        lotteryNumbers.insert(Int.random(in: 1...45))
    }
    return lotteryNumbers.sorted()
}

func checkLotteryNumbers(on winningLotteryNumbers: Array<Int>, at myLotteryNumbers: Array<Int>) -> Array<Int> {
    var myWinningLotteryNumbers = [Int]()
    for myLotteryNumber in myLotteryNumbers {
        if winningLotteryNumbers.contains(myLotteryNumber) {
            myWinningLotteryNumbers.append(myLotteryNumber)
        }
    }
    return myWinningLotteryNumbers
}

let myLotteryNumbers: [Int] = [3, 5, 7, 11, 18, 27]
let winningLotteryNumbers = createLotteryNumbers()
let myWinningLotteryNumbers = checkLotteryNumbers(on: winningLotteryNumbers, at: myLotteryNumbers)
