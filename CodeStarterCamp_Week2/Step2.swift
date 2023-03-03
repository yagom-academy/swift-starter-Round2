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

func compareLottoNumbers(with myLottoNumbers: [Int], _ chosenLottoNumbers: Set<Int>) -> [Int] {
    return chosenLottoNumbers.intersection(myLottoNumbers).sorted()
}

func printResult(in commonLottoNumbers: [Int]) {
    if commonLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(commonLottoNumbers.map { String($0) }.joined(separator: ", ")) 입니다!")
    }
}

func checkLottoResult(with myLottoNumbers: [Int]) {
    let commonLottoNumbers = compareLottoNumbers(with: myLottoNumbers, chooseLottoNumbers())
    
    printResult(in: commonLottoNumbers)
}
