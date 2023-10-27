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
var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()
var round: Int = 0
var drwaingLottoNumbers: Int = 0

func drawLottoNumbers() {
    if round < 5 {
        for _ in 1...5 {
            while lottoSet.count < 6 {
                drwaingLottoNumbers = Int.random(in: 1...45)
                lottoSet.insert(drwaingLottoNumbers)
            }

            round += 1
            lottoDictionary["\(round)회차"] = lottoSet
            lottoSet.removeAll()
        }
    }
}

func printdrwaingNumbers(nowRound: Int) {
    switch nowRound {
    case 1...5:
        if let nowRoundNumbers: Set<Int> = lottoDictionary["\(nowRound)회차"] {
            var nowWinningNumbers: String = ""
            print("\(nowRound)회차의 로또 당첨 번호는 ", terminator: "")
            for a in nowRoundNumbers {
                nowWinningNumbers += String(a) + ", "
            }
            nowWinningNumbers.removeLast(2)
            print("\(nowWinningNumbers)입니다.")
        }
    default:
        print("해당 결과가 없습니다.")
    }
}

drawLottoNumbers()

for count in 1...5 {
    printdrwaingNumbers(nowRound: count)
}

printdrwaingNumbers(nowRound: 7)
