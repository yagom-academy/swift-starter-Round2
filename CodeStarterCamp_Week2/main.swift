//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateWinningLottery(times: Int, appendTo pastWinningLotteries: inout [String: [Int]]) -> Array<Int> {
    var winningLottery = Set<Int>()
    var sortedWinningLottery = [Int]()
    for _ in 1...times {
        while winningLottery.count < 6 {
            winningLottery.insert(Int.random(in: 1...45))
        }
        sortedWinningLottery = winningLottery.sorted()
        appendWinngLottery(to: &pastWinningLotteries, by: "\(pastWinningLotteries.count+1)회차", and: sortedWinningLottery)
    }
    return sortedWinningLottery
}

func appendWinngLottery(to pastWinningLotteries: inout [String: [Int]], by key: String, and value: [Int]) {
    pastWinningLotteries[key] = value
}

func checkLotteryResults(of winningLottery: [Int], with myLottery: [Int]) -> Array<Int> {
    let myLotteryResults = Set(myLottery).intersection(winningLottery).sorted()
    return myLotteryResults
}

func receiveWinningMessage(to myLotteryResults: [Int]) -> String {
    let lotteryNumbersToString = changeIntArrayToString(target: myLotteryResults)
    let winningMessage = "축하합니다! 겹치는 번호는 \(lotteryNumbersToString) 입니다!"
    let losingMessage = "아쉽지만 겹치는 번호가 없습니다."
    return myLotteryResults.isEmpty ? losingMessage : winningMessage
}

func changeIntArrayToString(target array: [Int]) -> String {
    var resultString = ""
    for value in array {
        if value == array.first {
            resultString += "\(value)"
        } else {
            resultString += ", \(value)"
        }
    }
    return resultString
}

let myLottery = [3, 5, 7, 11, 18, 27]
var pastWinningLotteries = [String: [Int]]()
let winningLottery = generateWinningLottery(times: 5, appendTo: &pastWinningLotteries)
let myLotteryResults = checkLotteryResults(of: winningLottery, with: myLottery)
print(receiveWinningMessage(to: myLotteryResults))
if let lotteryNumbers = pastWinningLotteries["2회차"] {
    print("2회차의 로또 당첨 번호는 \(changeIntArrayToString(target: lotteryNumbers)) 입니다.")
} else {
    print("해당 회차는 아직 추첨되지 않았습니다.")
}
