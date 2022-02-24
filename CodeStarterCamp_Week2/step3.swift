//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by makseong on 2022/02/24.
//

import Foundation

var lotteryNumbers : Set<Int> = Set<Int>()
var lotteryHistory : Dictionary<String,Array<Int>> = [String:Array<Int>]()

func generateLotteryNumbers(round: Int) {
    while lotteryNumbers.count <= 5 {
        let pickedNumber = Int.random(in: 1...45)
        lotteryNumbers.update(with: pickedNumber)
    }
    saveLotteryNumbers(round: round)
}

func saveLotteryNumbers(round: Int) {
    lotteryHistory["\(round)회차"] = Array(lotteryNumbers)
}


func generateAndSaveLotteryNumbers(showFullRound lastRound: Int) -> Dictionary<String,Array<Int>> {
    for round in 1...lastRound {
        generateLotteryNumbers(round: round)
        lotteryNumbers.removeAll()
    }
    return lotteryHistory
}

func lookUpLotteryNumbers(round: Int) {
    if let secondRoundNumbers = lotteryHistory["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(secondRoundNumbers.map{String($0)}.joined(separator: ", ")) 입니다.")
    }
}
