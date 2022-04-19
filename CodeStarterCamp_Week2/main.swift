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

print(createLotteryNumber())
