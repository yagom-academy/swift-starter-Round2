//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Jungmo Yu on 2021/12/15.
//

import Foundation

func extractLottoNumbers() -> [Int] {
    var extractedNumbersSet = Set<Int>()
    
    while extractedNumbersSet.count < 6 {
        extractedNumbersSet.insert(Int.random(in: 1..<46))
    }
    
    return Array(extractedNumbersSet)
}

func compareLottoNumbers(realLottoNumbers: Set<Int>, myLottoNumbers: Set<Int>) -> [Int] {
    let intersectionSet = realLottoNumbers.intersection(myLottoNumbers)
    return Array(intersectionSet)
}

func printLottoResult(result resultArray: [Int]) {
    if resultArray.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        printHitNumbers(hitNumbers: resultArray.sorted())
    }
}

func printHitNumbers(hitNumbers hitNumbersArray: [Int]) {
    var hitNumbersString: String = ""
    
    for hitNumberIndex in 0..<(hitNumbersArray.count - 1) {
        hitNumbersString += "\(hitNumbersArray[hitNumberIndex]), "
    }
    hitNumbersString += String(hitNumbersArray[hitNumbersArray.endIndex - 1])
    
    print("축하합니다! 겹치는 번호는 " + hitNumbersString + " 입니다!")
}


