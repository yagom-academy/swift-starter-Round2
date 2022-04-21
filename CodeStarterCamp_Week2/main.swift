//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var lottoTray = Set<Int>()

    repeat {
        lottoTray.insert(pickRandomNumber(in: 45))
    } while lottoTray.count < 6

    return lottoTray
}

func pickRandomNumber(in endNum: Int) -> Int {
    return Int.random(in: 1...endNum)
}

func checkMyLottoNumbers(from myNumbers: Array<Int>, to winNumbers: Set<Int>) {
    var hittedNumbers: Array<Int> = []

    for number in myNumbers {
        if winNumbers.contains(number) {
            hittedNumbers.append(number)
        }
    }

    if hittedNumbers.count != 0 {
        var hitNumsStr = ""

        for number in hittedNumbers {
            let separator = ", "

            hitNumsStr += "\(number)"
            if number != hittedNumbers.last {
                hitNumsStr += separator
            }
        }

        print("축하합니다! 겹치는 번호는",hitNumsStr,"입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: Array<Int> = [1,2,3,4,5,6]
let winningNumbers = generateLottoNumbers()

checkMyLottoNumbers(from: myLottoNumbers, to: winningNumbers)

