//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoSet: Set<Int> = Set<Int>()
var compareSet: Set<Int> = Set <Int>()

// 로또 Set 생성 함수
func winningLotto() {
    var winLottoNumbers: Int
    while lottoSet.count < 6 {
        winLottoNumbers = Int.random(in: 1...45)
        lottoSet.insert(winLottoNumbers)
    }
}


// 번호 비교 함수
func compareNumber() {
    for _ in lottoSet {
        compareSet = lottoSet.intersection(myLottoNumbers)
    }
}

// 로또 출력 함수
func drawIsWinning() {
    if compareSet.count != 0 {
        var compareLottoNumbers: String = ""
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for a in compareSet {
            compareLottoNumbers += String(a) + ", "
        }
        compareLottoNumbers.removeLast(2)
        print("\(compareLottoNumbers)입니다.")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

winningLotto()
compareNumber()
drawIsWinning()
