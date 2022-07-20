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
    var lotteryNumberEachTime = [String: Set<Int>]()
    
    while count != times + 1 {
        lotteryNumberEachTime.updateValue(singleLotteryNumbers(), forKey: "\(count)회차")
        count += 1
    }
    
    return lotteryNumberEachTime
}
let actualLotteryNumbers: [String : Set<Int>]? = lotteryNumberAllTimes(times: 5)

func checkingLotteryNumbers(round: Int) {
    if let check = actualLotteryNumbers?["\(round)회차"] {
        var printedNumberInRow = ""
        for printing in check {
            printedNumberInRow += String(printing) + ","
        }
        printedNumberInRow.removeLast()
        print("\(round)회차의 로또 당첨 번호는 \(printedNumberInRow) 입니다.")
    }
}
checkingLotteryNumbers(round: 5)
