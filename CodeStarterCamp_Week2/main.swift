//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

var numbersPool: Array<Int> = Array<Int>(1...45)
var winningNumbers: Array<Int> = Array<Int>()
var matchingNumbers: Array<Int> = Array<Int>()
var resultNumberString: String = ""

func pickWinningNumbers() {
    numbersPool.shuffle()
    for i in 0...5 {
        winningNumbers.append(numbersPool[i])
    }
}

func compareLottoNumbers() {
    matchingNumbers.append(contentsOf:myLottoNumbers.filter(winningNumbers.contains))
    print(matchingNumbers)
}

func printLottoResult() {
    if matchingNumbers.isEmpty != true {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        
        for number in matchingNumbers {
            if resultNumberString == "" {
                resultNumberString = String(number)
            } else {
                resultNumberString = resultNumberString + ", " + String(number)
            }
        }
        print(resultNumberString + " 입니다!")

    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")

    }
}

pickWinningNumbers()
compareLottoNumbers()
printLottoResult()
