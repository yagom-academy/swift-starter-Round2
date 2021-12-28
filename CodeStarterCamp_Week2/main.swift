//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoWinningNumbersHistory: Dictionary = [String: [Int]]()

func makeLottoNumbersSet() -> Set<Int> {
    var lottoNumbersSet: Set<Int> = Set<Int>()
    repeat {
        lottoNumbersSet.insert(Int.random(in: 1...45))
    } while lottoNumbersSet.count < 6
    var lottoNumbersArray: [Int] = Array(lottoNumbersSet)
    saveLottoNumbers(lottoNumbersArray: lottoNumbersArray)
    return lottoNumbersSet
}


func saveLottoNumbers(lottoNumbersArray: [Int]) {
    lottoWinningNumbersHistory["\(lottoWinningNumbersHistory.count+1)회차"] = lottoNumbersArray
}


// STEP 3
for _ in 1...5{
    var lottoNumbersSet: Set<Int> = makeLottoNumbersSet()
}

var secondLottoWinningNumbers: [Int]? = lottoWinningNumbersHistory["2회차"]
if let lottoWinningNumbers: [Int] = secondLottoWinningNumbers {
    print("2회차의 로또 당첨 번호는 \(lottoWinningNumbers[0])", terminator: "")
    for index in 1...5 {
        print(", \(lottoWinningNumbers[index])", terminator: "")
    }
    print("입니다.")
} else {
    print("There is no 2nd Lotto Number")
}

