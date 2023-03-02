//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Hyungmin Lee on 2023/03/02.
//

import Foundation

struct WinningLotteryNumbers {
    
    func check(showTurn: Int) {
        var lotteryNumbers: [Int : Set<Int>] = [:]
        for turn in 1...5 {
            lotteryNumbers[turn] = generate()
        }
        
        if let showTurnNumbersSet = lotteryNumbers[showTurn] {
            let showTurnNumbersString = showTurnNumbersSet.sorted()
                                                        .map{String($0)}
                                                        .joined(separator: ", ")
            print("\(showTurn)회차의 로또 당첨 번호는 \(showTurnNumbersString) 입니다.")
        }
    }
    
    private
    func generate() -> Set<Int> {
        var randomNumber: Int
        var lottoNumberSet = Set<Int>()
        
        repeat {
            randomNumber = Int.random(in: 1...45)
            lottoNumberSet.insert(randomNumber)
        } while lottoNumberSet.count != 6
        
        return lottoNumberSet
    }

}
