//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLotteryNumber() -> Array<Int> {
    var lotteryNumber: Set<Int> = Set<Int>()
    while lotteryNumber.count < 6 {
        lotteryNumber.insert(Int.random(in: 1...45))
    }
    return lotteryNumber.sorted()
}

let myLotteryNumber = [3, 5, 7, 11, 18, 27]

print(myLotteryNumber)
print(createLotteryNumber())
