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

func makeLotteries() -> [String: [Int]] {
    var lotteries: [String: [Int]] = [:]
    let lotterySize: Int = 5
    
    for i in 1...lotterySize {
        let round = "\(i)회차"
        lotteries[round] = makeLotteryNumbers()
    }
    
    return lotteries
}

func printLotteries(lotteries: [String: [Int]]) {
    for i in 1...lotteries.count {
        let round: String = "\(i)회차"
        guard let lottery = lotteries[round] else { continue }
        
        let lotteryString: String = String(describing: lottery).dropFirst().dropLast().description
        print(round + "의 로또 당첨 번호는 " + lotteryString + " 입니다.")
    }
}

printLotteries(lotteries: makeLotteries())


