//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func pickLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 0...46))
    }
    return lottoNumbers
}

var savedNumbers: [String: Set<String>] = [:]

func saveLottoNumbers(index: Int, pickLottoNumbers: Set<Int>) -> [String : Set<String>] {
    var lottoNumbers: Set<String> = Set<String>()
    
    for num in pickLottoNumbers {
        lottoNumbers.insert(String(num))
    }
    
    savedNumbers["\(index)회차"] = lottoNumbers
    return savedNumbers
}

for index in 1...5 {
    saveLottoNumbers(index: index, pickLottoNumbers: pickLottoNumbers())
}

if let secondLottoNumber = savedNumbers["2회차"] {
    let joinedNumbers = secondLottoNumber.joined(separator: ", ")
    
    print("2회차의 로또 당첨 번호는 \(joinedNumbers) 입니다.")
}

// MARK: - STEP2 미션 코드입니다 👇
/*
func compareNumbers() -> Set<Int> {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var myNumbers: Set<Int> = Set<Int>()
    
    for index in 0..<myLottoNumbers.count {
        myNumbers.insert(myLottoNumbers[index])
    }
    
    let overlapping: Set<Int> = myNumbers.intersection(pickLottoNumbers())
    
    return overlapping
}

pickLottoNumbers()

var overlappingNumbers: Set<String> = Set<String>()

for num in compareNumbers() {
    overlappingNumbers.insert(String(num))
}

if compareNumbers().isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    let joinedNumbers = overlappingNumbers.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(joinedNumbers) 입니다!")
}
*/
