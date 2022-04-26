//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lotteryWinningNumber: Set<Int> = Set<Int>()
// 당첨로또넘버 배열에 1~45 사이의 무작위 수 6개를 추가.
func addPickedLottery() -> Set<Int> {
    while lotteryWinningNumber.count < 6 {
        let randomInt = Int.random(in: 1..<46)
        lotteryWinningNumber.insert(randomInt)
    }
    return lotteryWinningNumber
}
addPickedLottery()

var myLottoNumbers: Set<Int> = [6, 13, 17, 27, 35, 42]

var intersection = myLottoNumbers.intersection(lotteryWinningNumber)
// 내 로또와 당첨로또넘버의 교집합(공통변수)인자수 에따른 결과 출력
func checkMyLottery () {
    switch intersection.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1..<6:
        print("축하합니다! 겹치는 번호는 \(intersection.sorted()) 입니다.")
    default:
        print("")
    }
}

checkMyLottery()
