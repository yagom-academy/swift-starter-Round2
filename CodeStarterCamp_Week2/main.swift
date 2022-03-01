//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let random = Int.random(in: 1...45)
        lottoNumbers.insert(random)
    }
    return lottoNumbers
}

func saveLottoNumbers(lottoNumbers: Set<Int>) -> Set<Int> {
    makeLottoNumbers()
    return lottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkLottoNumbers(lottoNumbers: Set<Int>) -> Set<Int> {
    let winningLottoNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    return winningLottoNumbers
}

func printLottoResult(winningLottoNumbers: Set<Int>) {
    if winningLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(winningLottoNumbers) 입니다!")
    }
}

func playLotto(lottoNumbers: Set<Int>, winningLottoNumbers: Set<Int>) {
    saveLottoNumbers(lottoNumbers: lottoNumbers)
    checkLottoNumbers(lottoNumbers: lottoNumbers)
    printLottoResult(winningLottoNumbers: winningLottoNumbers)
}

playLotto(lottoNumbers: , winningLottoNumbers: )
