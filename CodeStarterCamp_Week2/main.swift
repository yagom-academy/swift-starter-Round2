//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateWinningLottery() -> Array<Int> {
    var winningLottery: Set<Int> = Set<Int>()
    while winningLottery.count < 6 {
        winningLottery.insert(Int.random(in: 1...45))
    }
    return winningLottery.sorted()
}

func getLotteryResults(compare winningLottery: Array<Int>, with myLottery: Array<Int>) -> Array<Int> {
    var myLotteryResults = [Int]()
    for myLotteryNumber in myLottery {
        if winningLottery.contains(myLotteryNumber) {
            myLotteryResults.append(myLotteryNumber)
        }
    }
    return myLotteryResults
}

func changeIntArrayToString(target array: [Int]) -> String {
    var resultString = ""
    for value in array {
        if value == array.first {
            resultString = "\(value)"
        } else {
            resultString += ", \(value)"
        }
    }
    return resultString
}

func getWinningMessage(by myLotteryResults: [Int]) -> String {
    let winningMessage = "축하합니다! 겹치는 번호는 " + changeIntArrayToString(target: myLotteryResults) + " 입니다!"
    let losingMessage = "아쉽지만 겹치는 번호가 없습니다."
    return myLotteryResults.isEmpty ? losingMessage : winningMessage
}

let myLottery: [Int] = [3, 5, 7, 11, 18, 27]
let winningLottery = generateWinningLottery()
let myLotteryResults = getLotteryResults(compare: winningLottery, with: myLottery)
print(getWinningMessage(by: myLotteryResults))
