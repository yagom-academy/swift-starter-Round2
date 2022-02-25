//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

func makeLottoNumbers() {
    let random = Int.random(in: 1...45)
    lottoNumbers.insert(random)
}

@discardableResult
func saveLottoNumbers() -> Set<Int> {
    while lottoNumbers.count < 6 {
        makeLottoNumbers()
    }
    return lottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkLottoNumbers() {
    let winningLottoNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
}

func printLottoResult() {
    if winningLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(winningLottoNumbers) 입니다!")
    }
}

func playLotto() {
    saveLottoNumbers()
    checkLottoNumbers()
    printLottoResult()
}

playLotto()
