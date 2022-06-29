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
    let matchingNumberArray = matchingNumbers.sorted()
    let matchingNumberQuantity = matchingNumbers.count
    let matchingNumberIndex = matchingNumberArray.count
    if(matchingNumberQuantity == 1) {
        print("축하합니다! 겹치는 번호는 \(matchingNumberArray[0]) 입니다!")
    }
    else if(matchingNumberQuantity == 2) {
        print("축하합니다! 겹치는 번호는 \(matchingNumberArray[0]), \(matchingNumberArray[1]) 입니다!")
    }
    else if(matchingNumberQuantity >= 3) {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for matchingNumberArrayIndex in 0...matchingNumberIndex - 2 {
            print(matchingNumberArray[matchingNumberArrayIndex], terminator: ", ")
        }
        print("\(matchingNumberArray[matchingNumberIndex - 1]) 입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
