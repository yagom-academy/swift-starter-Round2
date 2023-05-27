//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var numbersPool: Array<Int> = Array<Int>(1...45)
var winningNumbers: Array<Int> = Array<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var matchingNumbers: Array<Int> = Array<Int>()

func pickWinningNumbers() {
    numbersPool.shuffle()
    for i in 0...5 {
        winningNumbers.append(numbersPool[i])
    }
}

func compareLottoNumbers() {
    for placeInMyNumbers in 0...5 {
        for placeInWinningNumbers in 0...5 {
            if myLottoNumbers[placeInMyNumbers] == winningNumbers[placeInWinningNumbers] {
                matchingNumbers.append(myLottoNumbers[placeInMyNumbers])
            }
        }
    }
}

func printLottoResult() {
    if matchingNumbers.isEmpty == true {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers) 입니다!")
    }
}

pickWinningNumbers()
compareLottoNumbers()
printLottoResult()
