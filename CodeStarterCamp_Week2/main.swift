//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = Set<Int>()

@discardableResult
func createLottoNumbers() -> Set<Int> {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func checkWinning(with lottoNumbers: Set<Int>, and myNumbers: [Int]) {
    let sortedLottoNumbers = lottoNumbers.sorted()
    var sameNumbers: [String] = []
    
    for lottoNumber in sortedLottoNumbers {
        if myLottoNumbers.contains(lottoNumber) {
            sameNumbers.append(String(lottoNumber))
        }
    }
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbers.joined(separator: ", ")) 입니다!")
    }
}

createLottoNumbers()
checkWinning(with: lottoNumbers, and: myLottoNumbers)
