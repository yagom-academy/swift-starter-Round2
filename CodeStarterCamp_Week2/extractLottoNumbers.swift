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
    
    return Array(extractedNumbersSet).sorted()
}

func compareLottoNumbers(realLottoNumbers: Set<Int>, myLottoNumbers: Set<Int>) -> [Int] {
    let intersectionSet = realLottoNumbers.intersection(myLottoNumbers)
    return Array(intersectionSet).sorted()
}

func printLottoResult(result resultArray: [Int]) {
    if resultArray.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 " + removeBracketFromArray(someArray: resultArray) + " 입니다!")
    }
}


func removeBracketFromArray(someArray: [Int]) -> String {
    var bracketRemovedString: String = ""
    let lastIndex = someArray.count - 1
    for index in 0..<(lastIndex) {
        bracketRemovedString += "\(someArray[index]), "
    }
    bracketRemovedString += String(someArray[lastIndex])
    return bracketRemovedString
}


