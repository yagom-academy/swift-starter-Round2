//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

enum LotteryError: Error {
    case isEmpty
}

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

func checkLotteryResults(of winningLottery: [Int], with myLottery: [Int]) -> [Int] {
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
for winningLottery in generateWinningLottery(times: 5) {
    pastWinningLotteries["\(pastWinningLotteries.count+1)회차"] = winningLottery
}
guard let resentWinningLottery = pastWinningLotteries["\(pastWinningLotteries.count)회차"] else { throw LotteryError.isEmpty }
let myLotteryResults = checkLotteryResults(of: resentWinningLottery, with: myLottery)
print(receiveWinningMessage(to: myLotteryResults))
var messageWithExtractedNumbers = String()
if let lotteryNumbers = pastWinningLotteries["2회차"] {
    messageWithExtractedNumbers = "2회차의 로또 당첨 번호는 \(changeIntArrayToString(target: lotteryNumbers)) 입니다."
} else {
    messageWithExtractedNumbers = "해당 회차는 아직 추첨되지 않았습니다."
}
print(messageWithExtractedNumbers)
