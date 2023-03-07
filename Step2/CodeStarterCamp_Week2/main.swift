//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func convertSetTypeIntoStringType(toConvert: Set<Int>) -> String {
    let converted = toConvert.map {String($0)}.joined(separator: ", ")
    
    return converted
}

func makeRandomNumbers(numberCount: Int) -> Set<Int> {
    var randomNumbers = Set<Int>()
    
    while (randomNumbers.count < numberCount) {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    
    return randomNumbers
}

func compareMyNumbersWithRandomNumbers(myNumbers: Int...) {
    let randomNumbers = makeRandomNumbers(numberCount: 6)
    
    var correctNumbers = Set<Int>()
    
    for myNumber in myNumbers {
        if randomNumbers.contains(myNumber) {
            correctNumbers.insert(myNumber)
        }
    }
    
    let correctNumbersConverted = convertSetTypeIntoStringType(toConvert: correctNumbers)
    
    if correctNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(correctNumbersConverted, terminator: "")
        print(" 입니다!")
    }
}

compareMyNumbersWithRandomNumbers(myNumbers: 1,2,3,4,5,6)
