//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func singleLotteryNumbers() -> Set<Int> {
    var lotteryNumbers: Set<Int> = Set<Int>()

    while lotteryNumbers.count != 6 {
        lotteryNumbers.insert(Int.random(in: 1...45))
    }
    return lotteryNumbers
}

func lotteryNumberAllTimes(times: Int) -> [String : Set<Int>] {
    var count = 1
    var lotteryNumberEachTime = ["\(count)회차": singleLotteryNumbers()]
    
    while count != times + 1 {
        lotteryNumberEachTime.updateValue(singleLotteryNumbers(), forKey: "\(count)회차")
        count+=1
    }
    
    return lotteryNumberEachTime
}
