//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Jungmo Yu on 2021/12/15.
//

import Foundation

func extractLottoNumbers() -> [Int] {
    var recommendedNumbersSet = Set<Int>()
    
    while recommendedNumbersSet.count < 6 {
        recommendedNumbersSet.insert(Int.random(in: 1..<46))
    }
    
    return Array(recommendedNumbersSet)
}

func compareLottoNumbers(realLottoNumbers: Set<Int>, myLottoNumbers: Set<Int>) -> [Int] {
    let intersectionSet = realLottoNumbers.intersection(myLottoNumbers)
    return Array(intersectionSet)
}

func printMessage(numbers: [Int]) {
    if numbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        printArray(arrayForPrint: numbers.sorted())
    }
}

func printArray(arrayForPrint: [Int]) {
    var stringForPrint: String = ""
    
    for idx in 0..<(arrayForPrint.count - 1) {
        stringForPrint += "\(arrayForPrint[idx]), "
    }
    stringForPrint += String(arrayForPrint[arrayForPrint.endIndex - 1])
    
    print("축하합니다! 겹치는 번호는 " + stringForPrint + " 입니다!")
}


