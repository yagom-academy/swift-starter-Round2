//
//  step 2_checkLottoWinner.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2022/02/20.
//

import Foundation

func generateLottoNumbers(maxRange: Int, maxNumber: Int) -> Set<Int> {
    var lottoNumberSet: Set<Int> = []
    while lottoNumberSet.count < maxNumber {
        lottoNumberSet.insert(Int.random(in: 1...maxRange))
    }
    return lottoNumberSet
}

func checkLottoWinner(lottoNumberSet: Set<Int>, myNumberSet: Set<Int>) {
    let winningNumbers = lottoNumberSet.intersection(myNumberSet)
    if winningNumbers.count > 0 {
        let winningNumbersIntArray = Array(winningNumbers).sorted()
        var winningNumbersStringArray: Array<String> = []
        for index in 0...winningNumbersIntArray.count - 1 {
            winningNumbersStringArray.append("\(winningNumbersIntArray[index])")
        }
        print("축하합니다! 겹치는 번호는 \(winningNumbersStringArray.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
