//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/18.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

func makeWinningNumbers() -> Set<Int>{
    var lottoNumbersSet = Set<Int>()
    while lottoNumbersSet.count < 6 {
        lottoNumbersSet.insert(Int.random(in:1...45))
    }
    return lottoNumbersSet
}

func compareLottoNumbers(winning: Set<Int>, mine: Set<Int>) -> Set<Int> {
    var sameLottoNumbers = Set<Int>()
    sameLottoNumbers = winning.intersection(mine)
    return sameLottoNumbers
}

func printResult(sameLottoNumbers: Set<Int>) {
    if sameLottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        var sameLottoNumbersString = String()
        for stringArray in sameLottoNumbers {
            sameLottoNumbersString += String(stringArray) + ","
        }
        sameLottoNumbersString.removeLast()

        print(sameLottoNumbersString, terminator: " ")
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func findOverlapLottoNumbers() {
    let winningLottoNumbers = makeWinningNumbers()
    let overlapNumbers = compareLottoNumbers(winning: winningLottoNumbers, mine: myLottoNumbers)
    printResult(sameLottoNumbers: overlapNumbers)

    print(winningLottoNumbers.sorted())
}
