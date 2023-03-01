//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Daehoon Lee on 2023/03/01.
//

import Foundation

func chooseLottoNumbers() -> Set<Int> {
    var pickUpLottoNumbers: Set<Int> = Set<Int>()
    
    while pickUpLottoNumbers.count < 6 {
        pickUpLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return pickUpLottoNumbers
}

func compareLottoNumbers(myLottoNumbers: [Int], chosenLottoNumbers: Set<Int>) -> [Int] {
    return chosenLottoNumbers.intersection(myLottoNumbers).sorted()
}

func printResult(commonLottoNumbers: [Int]) {
    let commonLottoNumbersString: [String] = commonLottoNumbers.map{ String($0) }
    
    if commonLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(commonLottoNumbersString.joined(separator: ", ")) 입니다!")
    }
}

func checkLottoResult(myLottoNumbers: [Int]) {
    let commonLottoNumbers = compareLottoNumbers(myLottoNumbers: myLottoNumbers, chosenLottoNumbers: chooseLottoNumbers())
    
    printResult(commonLottoNumbers: commonLottoNumbers)
}
