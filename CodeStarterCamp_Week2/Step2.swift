//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Hyungmin Lee on 2023/02/28.
//

import Foundation

struct Lotto {
    
    func matchNumbers(myLottoNumbers: [Int]) {
        let myNumbersSet = Set<Int>(myLottoNumbers)
        let lottoNumbers: Set<Int> = generateWinningLotteryNumbers()
        let matchNumbers = lottoNumbers.intersection(myNumbersSet)
            .sorted()
            .map{String($0)}
            .joined(separator: ", ")
        
        if matchNumbers.count > 0 {
            print("축하합니다! 겹치는 번호는 \(matchNumbers) 입니다!")
            return
        }
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
    private
    func generateWinningLotteryNumbers() -> Set<Int> {
        var randomNumber: Int
        var lottoNumberSet = Set<Int>()
        
        repeat {
            randomNumber = Int.random(in: 1...45)
            lottoNumberSet.insert(randomNumber)
        } while lottoNumberSet.count != 6
        
        return lottoNumberSet
    }
    
}
