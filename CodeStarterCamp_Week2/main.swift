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
