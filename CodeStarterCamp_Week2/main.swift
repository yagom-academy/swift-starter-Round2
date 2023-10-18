//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoGameResult: Set<Int> = Set<Int>()

while lottoGameResult.count < 6 {
    lottoGameResult.insert(Int.random(in: 1...45))
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let matchedNumbers: Set<Int> = lottoGameResult.intersection(myLottoNumbers)
let openNumbers = matchedNumbers.map { String($0) }.joined(separator: ", ")

if matchedNumbers.count >= 1 {
    print("축하합니다! 겹치는 번호는 \(openNumbers) 입니다!") }
else {print("아쉽지만 겹치는 번호가 없습니다.")
}

