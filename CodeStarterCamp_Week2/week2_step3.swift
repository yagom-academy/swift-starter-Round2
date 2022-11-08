//
//  week2_step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 정경우 on 2022/11/07.
//
import Foundation

var winningLottoNumbers = Set<Int>()
var roundWinningNumbers: [String: Set<Int>] = [:]
var repeatNumbers: Int = 0
var round: String = ""

func makeLottoNumbers() {
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    repeatNumbers += 1
}

func saveNumbers() {
    roundWinningNumbers["\(repeatNumbers)회차"] = winningLottoNumbers
    winningLottoNumbers.removeAll()
}

func fiveTimes() {
    for _ in 1...5{
        makeLottoNumbers()
        saveNumbers()
    }
}

func rounds() {
    print("1~5중 원하는 숫자를 입력하세요:")
    let num  = readLine()
    if let number = num{
        round = number
        round += "회차"
    }
}

func checkingRounds() {
    if let intNum = roundWinningNumbers["\(round)"] {
        var stringNum = "\(intNum.sorted())"
        stringNum = stringNum.trimmingCharacters(in: ["[","]"])
        print("\(round)의 로또 당첨번호는 \(stringNum)입니다.")
    }
}
