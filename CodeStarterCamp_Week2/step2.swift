//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Min Hyun on 2023/03/06.
//

import Foundation

func checkLottoNumbers(mine myLottoNumbersArray: Array<Int>,
                       winners newLottoNumbersSet: Set<Int>) {
    let myLottoNumbersSet: Set<Int> = Set<Int>(myLottoNumbersArray)
    let matchedLottoNumbers: String = newLottoNumbersSet.intersection(myLottoNumbersSet)
        .map({(value: Int) -> String in return String(value)})
        .joined(separator: ", ")

    if matchedLottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchedLottoNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
