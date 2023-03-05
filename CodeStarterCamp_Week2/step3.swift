//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by MARY on 2023/03/01.
//

import Foundation

func genarateAndSaveLotteryNumbers(to history: [String: [Int]], iteration: Int = 1) -> [String: [Int]] {
    var updatedHistory = history
    
    for _ in 1...iteration {
        updatedHistory["\(updatedHistory.count + 1)회차"] = Array(generateLotteryNumbers()).sorted()
    }
    return updatedHistory
}

func findLotteryNumbers(round: Int, from history: [String: [Int]]) {
    let key: String = "\(round)회차"
    
    if let numbers = history[key] {
        print("\(key)의 로또 당첨 번호는", terminator: " ")
        printAllElements(of: numbers)
        print("입니다.")
    } else {
        print("\(key)는 아직 진행하지 않았습니다.")
    }
}
