//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var drwaingLottoNumbersSet: Set<Int> = Set<Int>()
var checkLottoNumbersSet: Set<Int> = Set<Int>()

// 로또 Set 생성 함수
func drawLottoNumbers() {
    var drwaingLottoNumbers: Int
    while drwaingLottoNumbersSet.count < 6 {
        drwaingLottoNumbers = Int.random(in: 1...45)
        drwaingLottoNumbersSet.insert(drwaingLottoNumbers)
    }
}


// 번호 비교 함수
func checkMyNumbersAndLottoNumbers() {
    for _ in drwaingLottoNumbersSet {
        checkLottoNumbersSet = drwaingLottoNumbersSet.intersection(myLottoNumbers)
    }
}

// 로또 출력 함수
func printWinningLotto() {
    if checkLottoNumbersSet.count != 0 {
        var comparisonRaffleNumbers: String = ""
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for a in checkLottoNumbersSet {
            comparisonRaffleNumbers += String(a) + ", "
        }
        comparisonRaffleNumbers.removeLast(2)
        print("\(comparisonRaffleNumbers)입니다.")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

drawLottoNumbers()
checkMyNumbersAndLottoNumbers()
printWinningLotto()
