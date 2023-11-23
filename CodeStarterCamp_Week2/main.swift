//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func generateLottoNumber() -> Set<Int> {
    var result = Set<Int>()
    
    while result.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        result.insert(randomNumber)
    }
    
    return result
}

func checkLottoNumbers(lottoNumbers: Set<Int>) {
    let matchedNumbers = lottoNumbers.filter { myLottoNumbers.contains($0) }
    
    guard !matchedNumbers.isEmpty else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    let joinedNumbers = matchedNumbers.map { String($0) }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(joinedNumbers) 입니다!")
}

let lottoNumbers = generateLottoNumber()
checkLottoNumbers(lottoNumbers: lottoNumbers)
