//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by makseong on 2022/02/21.
//

import Foundation

var lotteryNumbers : Set<Int> = []
let myLotteryNumbers : [Int] = [1,2,3,4,5,6]

func lotteryNumberGenerator() -> Set<Int> {
    while lotteryNumbers.count <= 5 {
        let pickedNumber = Int.random(in: 1...45)
        lotteryNumbers.update(with: pickedNumber)
    }
    return lotteryNumbers
}

func compare(lotteryNumbers: Set<Int>, myLotteryNumbers: Array<Int>) {
    if Set(myLotteryNumbers) == lotteryNumbers {
        let winningMessage = "축하합니다! 겹치는 번호는 \(myLotteryNumbers[0]),\(myLotteryNumbers[1]),\(myLotteryNumbers[2]),\(myLotteryNumbers[3]),\(myLotteryNumbers[4]),\(myLotteryNumbers[5]) 입니다!"
        print(winningMessage)
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
