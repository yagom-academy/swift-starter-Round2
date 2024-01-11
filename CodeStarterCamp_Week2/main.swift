//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLotteryNumbers() -> [Int] {
    var result: Set<Int> = Set<Int>()
    let numberSize: Int = 6
    
    while result.count != numberSize {
        result.insert(Int.random(in: 1...45))
    }
    
    return result.sorted()
}

func makeLotteries(lotterySize: Int) -> [String: [Int]] {
    var lotteries: [String: [Int]] = [:]
    
    for i in 1...lotterySize {
        let round = "\(i)회차"
        lotteries[round] = makeLotteryNumbers()
    }
    
    return lotteries
}

func printSingleLottery(lotteries: [String: [Int]], round: Int) {
    let roundText: String = "\(round)회차"
    guard let lottery = lotteries[roundText] else {
        print("회차 정보를 확인해주세요!")
        return
    }
    
    let lotteryText: String = String(describing: lottery).dropFirst().dropLast().description
    print(roundText + "의 로또 당첨 번호는 " + lotteryText + " 입니다.")
}

printSingleLottery(lotteries: makeLotteries(lotterySize: 5), round: 4)



