//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

// 로또 당첨 번호를 생성하는 함수
func pickWinningNumber() -> Set<Int> {
    var winningNumber: Set<Int> = Set<Int>()
    let numberRange: ClosedRange<Int> = 1...45
    while winningNumber.count < 6 {
        winningNumber.insert(Int.random(in: numberRange))
    }
    return winningNumber
}

// 겹치는 숫자를 확인하는 함수
func checkOverlap(winningNumber: Set<Int>) {
    let overlapNumber: Set<Int> = winningNumber.intersection(myLottoNumbers)
    guard overlapNumber.count > 0 else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    print("축하합니다! 겹치는 번호는 \(overlapNumber)입니다!")
}

// 실행
checkOverlap(winningNumber: pickWinningNumber())

// -------------------------------------------------------------------------------
// STEP3
var lottoList: [String: Set<Int>] = [:]
var roundCount: Int = 1

// 로또 당첨 번호를 생성, Dictionary에 저장하는 별도의 함수
//func pickWinningNumber() -> Set<Int> {
//    var winningNumber: Set<Int> = Set<Int>()
//    let numberRange: ClosedRange<Int> = 1...45
//    while winningNumber.count < 6 {
//        winningNumber.insert(Int.random(in: numberRange))
//    }
//    return winningNumber
//
//}
func addWinningNumber(winningNumber: Set<Int>) {
    lottoList["\(roundCount)회차"] = winningNumber
    roundCount += 1
}

// 원하는 회차의 당첨번호를 알려주는 함수
func roundWinningNumber(round: Int) {
    if let winningNumber = lottoList["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(winningNumber) 입니다.")
    }
}

func lottoRounds(times round: Int) {
    for _ in 1...round {
        addWinningNumber(winningNumber: pickWinningNumber())
    }
}
// 실행
lottoRounds(times: 5)
roundWinningNumber(round: 2)
