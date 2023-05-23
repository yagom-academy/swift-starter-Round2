//
//  Lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by ChoiKwangWoo on 2023/05/23.
//

import Foundation

func getLottoNumbers() -> [Int] {
    var lottoNumbers = Set<Int>()
    while lottoNumbers.count != 6, let randomNumber = (1...45).randomElement() {
        lottoNumbers.insert(randomNumber)
    }
    return Array(lottoNumbers)
}

func checkLottoNumber(myNumbers: [Int], goal: [Int]) -> [Int] {
    let sameNumbers: [Int] = goal.filter{ myNumbers.contains($0) }
    guard sameNumbers.count > 0 else {
        return []
    }
    return sameNumbers
}
