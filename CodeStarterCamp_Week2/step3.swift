//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/07/04.
//

import Foundation

var round: Int = 1
var lottoHistory: [String: [Int]] = [String: [Int]]()

func insertHistory() {
    let intNumber: [Int] = [Int](lottoNumbers)
    lottoHistory["\(round)회차"] = intNumber
    round += 1
}

func printRoundOfHistory(round:String) {
    if let value: [Int] = lottoHistory[round] {
        var intNumbers: [Int] = []
        var stringNumbers: [String] = []
        
        for num in value {
            intNumbers.append(num)
            intNumbers.sort()
        }
        
        for num in intNumbers {
            stringNumbers.append(String(num))
        }
        
        print("\(round)의 로또 당첨 번호는 \(stringNumbers.joined(separator: ", ")) 입니다.")
    }
}
