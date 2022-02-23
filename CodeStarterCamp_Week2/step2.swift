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

func compareNumbers() {
    let compareLotteryNumbers: Set<Int> = lotteryNumberGenerator().intersection(myLotteryNumbers)
    
    if compareLotteryNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let lotteryNumber = compareLotteryNumbers.map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(lotteryNumber) 입니다!")
    }
}
