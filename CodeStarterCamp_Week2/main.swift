//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var winningLottoNumber: [Int] = []
var chosenWinningNum: Int = 0
var sameLottoNumber: [String] = []
var winningLottoHistory: [Int: [String]] = [:]
var winningLottoHistoryValue: [String] = []
var roundaboutCount: Int = 0

func saveWinningLotto(with winningLottoNumber: [Int], with roundaboutCount: Int) {
    winningLottoHistoryValue.removeAll()
    for winningNumber in winningLottoNumber {
        winningLottoHistoryValue.append(String(winningNumber))
        winningLottoHistory[roundaboutCount] = winningLottoHistoryValue
    }
    
}

func chooseWinningLotto() {
    while winningLottoNumber.count < 6 {
        chosenWinningNum = Int.random(in : 1...45)
        if winningLottoNumber.contains(chosenWinningNum) == false {
            winningLottoNumber.append(chosenWinningNum)
        }
    }
    roundaboutCount += 1
    saveWinningLotto(with: winningLottoNumber, with: roundaboutCount)
}

func checkLottoNumber(with winningLotto: Array<Int>, with myLotto: Array<Int> ) {
    
    for winningNumber in winningLotto {
        if myLotto.contains(winningNumber) == true {
            sameLottoNumber.append(String(winningNumber))
        }
    }
    
    if sameLottoNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameLottoNumber.joined(separator: ", ")) 입니다!")
    }
}

let myLottoNumber: [Int] = [13, 3, 37, 7, 11, 23]

for _ in 1...5 {
    chooseWinningLotto()
    checkLottoNumber(with: winningLottoNumber, with: myLottoNumber)
    winningLottoNumber.removeAll()
    sameLottoNumber.removeAll()
}

print("찾고 싶은 로또 추첨 회차를 입력해 주세요: ")
if let historyAccess = readLine() {
    if let roundaboutKey = Int(historyAccess) {
        if let winningLottoValue = winningLottoHistory[roundaboutKey] {
            print("\(roundaboutKey)회차의 로또 당첨 번호는 \(winningLottoValue.joined(separator: ", ")) 입니다.")
        } else {
            print("\(roundaboutKey)회차에 대한 당첨 번호가 존재하지 않습니다.")
        }
    } else {
        print("원하시는 로또 추첨 회차를 찾고 싶다면 숫자만 입력해 주세요.")
    }
}
