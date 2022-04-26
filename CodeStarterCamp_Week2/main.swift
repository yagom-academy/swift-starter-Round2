//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateWinningLottery(times: Int) -> [[Int]] {
    var winningLotteries = [[Int]]()
    for _ in 1...times {
        var winningLottery = Set<Int>()
        while winningLottery.count < 6 {
            winningLottery.insert(Int.random(in: 1...45))
        }
        winningLotteries.append(winningLottery.sorted())
    }
    return winningLotteries
}

func attachWinningLotteries(_ winningLotteries: [[Int]], to pastWinningLotteries: [String: [Int]]) -> [String: [Int]] {
    var pastWinningLotteries = pastWinningLotteries
    for winningNumbers in winningLotteries {
        pastWinningLotteries["\(pastWinningLotteries.count+1)회차"] = winningNumbers
    }
    return pastWinningLotteries
}

func checkMyWinningResults(by myLottery: [Int], at pastWinningLotteries: [String: [Int]]) -> String {
    let presentRound = "\(pastWinningLotteries.count)회차"
    if let presentWinningLottery = pastWinningLotteries[presentRound] {
        let myLotteryResults = checkLotteryResults(of: presentWinningLottery, by: myLottery)
        return receiveWinningMessage(for: myLotteryResults)
    } else {
        return "현재 추첨된 복권이 없습니다."
    }
}

func checkLotteryResults(of winningLottery: [Int], by myLottery: [Int]) -> [Int] {
    let myLotteryResults = Set(myLottery).intersection(winningLottery).sorted()
    return myLotteryResults
}

func receiveWinningMessage(for myLotteryResults: [Int]) -> String {
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

func receiveMessage(for targetRound: String, of pastWinningLotteries: [String: [Int]]) -> String {
    if let lotteryNumbers = pastWinningLotteries[targetRound] {
        return "\(targetRound)의 로또 당첨 번호는 \(changeIntArrayToString(target: lotteryNumbers)) 입니다."
    } else {
        return "해당 회차는 아직 추첨되지 않았습니다."
    }
}

let myLottery = [3, 5, 7, 11, 18, 27]
var pastWinningLotteries = [String: [Int]]()
pastWinningLotteries = attachWinningLotteries(generateWinningLottery(times: 5), to: pastWinningLotteries)
print(checkMyWinningResults(by: myLottery, at: pastWinningLotteries))
print(pastWinningLotteries)
let targetRound = "2회차"
print(receiveMessage(for: targetRound, of: pastWinningLotteries))
