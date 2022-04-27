//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

func pickLottoNumbers() -> Set<Int> {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 0...46))
    }
    return lottoNumbers
}

func compareNumbers() -> Set<Int> {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var myNumbers: Set<Int> = Set<Int>()
    
    for index in 0..<myLottoNumbers.count {
        myNumbers.insert(myLottoNumbers[index])
    }
    
    let overlapping: Set<Int> = myNumbers.intersection(lottoNumbers)
    
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
