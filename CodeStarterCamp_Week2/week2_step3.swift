//
//  week2_step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 정경우 on 2022/11/07.
//
import Foundation

var roundWinningNumbers: [String: Set<Int>] = [:]

func makeLottoNumbers() -> Set<Int> {
    var winningLottoNumbers = Set<Int>()
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return(winningLottoNumbers)
}

func drawLottoFiveTimes() {
    for round in 1...5 {
        roundWinningNumbers["\(round)회차"] = makeLottoNumbers()
    }
}

func chooseRound()  {
    print("1~5중 원하는 숫자를 입력하세요:")
    let inputNum  = readLine()
    if var number = inputNum {
        number = number + "회차"
        checkingRounds(number)
        
    }
}

func checkingRounds(_ round: String) {
    if let sortBeforeNum: Set<Int> = roundWinningNumbers[round] {
        var sortAfterNum = "\(sortBeforeNum.sorted())"
        sortAfterNum = sortAfterNum.trimmingCharacters(in: ["[","]"])
        print("\(round)의 로또 당첨번호는 \(sortAfterNum)입니다.")
    } else {
        print("없는 회차입니다.")
    }
}
