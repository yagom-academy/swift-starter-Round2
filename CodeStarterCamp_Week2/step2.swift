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
        generatedNumbers.insert(Int.random(in: 1...45))
    }
    return generatedNumbers
}

func commpareLottoNumbers(myNumber: Array<Int>, thisWeekNumber: Set<Int>) {
    let myLottoNumberSet = Set(myNumber)
    let matchingNumberArray = myLottoNumberSet.intersection(thisWeekNumber).sorted()
    let matchingNumberQuantity = matchingNumberArray.count
    if(matchingNumberQuantity != 0) {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 1...matchingNumberQuantity {
            if(index != matchingNumberQuantity) {
                print(index, terminator: ", ")
            }
            else {
                print(index, terminator: " 입니다!\n")
            }
        }
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
