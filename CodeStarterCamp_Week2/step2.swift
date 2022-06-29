//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by smfc on 29/6/2022.
//

import Foundation

func generateLottoNumber() -> Set<Int> {
    var generatedNumbers: Set<Int> = Set<Int>()
    while generatedNumbers.count < 6 {
        generatedNumbers.insert(Int.random(in: 1..<46))
    }
    return generatedNumbers
}

func commpareLottoNumbers(myNumber: Array<Int>, thisWeekNumber: Set<Int>) {
    let myLottoNumberSet = Set(myLottoNumbers)
    let matchingNumbers: Set<Int> = myLottoNumberSet.intersection(thisWeekNumber)
    if(matchingNumbers.count > 1) {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers)입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
