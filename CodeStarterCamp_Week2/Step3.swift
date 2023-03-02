//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Hyungmin Lee on 2023/03/02.
//

import Foundation

struct WinningLotteryNumbers {
    
    func showNumbers(round: Int) {
        var lotteryNumbers: [Int : Set<Int>] = [:]
        for lotteryRound in 1...5 {
            lotteryNumbers[lotteryRound] = generateNumbers()
        }
        
        if let showTurnNumbersSet = lotteryNumbers[round] {
            let showTurnNumbersString = showTurnNumbersSet.sorted()
                                                        .map{String($0)}
                                                        .joined(separator: ", ")
            print("\(round)회차의 로또 당첨 번호는 \(showTurnNumbersString) 입니다.")
        }
    }
    
    private
    func generateNumbers() -> Set<Int> {
        var randomNumber: Int
        var lottoNumberSet = Set<Int>()
        
        repeat {
            randomNumber = Int.random(in: 1...45)
            lottoNumberSet.insert(randomNumber)
        } while lottoNumberSet.count != 6
        
        return lottoNumberSet
    }
}
