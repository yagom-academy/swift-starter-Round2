//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers = [1, 2, 3, 4, 5, 6]
var storedLottoNumbers = [String: [Int]]()
var lottoRound = 0

func createLottoNumbers() {
    var lottoNumbers: Set<Int> = Set<Int>()
    var number: Int
    
    while lottoNumbers.count < 6 {
        number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
    
    storeLottoNumbers(lottoNumbers: lottoNumbers.sorted())
}

func storeLottoNumbers(lottoNumbers: [Int]) {
    lottoRound += 1
    
    storedLottoNumbers["\(lottoRound)회차"] = lottoNumbers
}

createLottoNumbers()
createLottoNumbers()
createLottoNumbers()
createLottoNumbers()
createLottoNumbers()

let lottoRoundToKnow = 3

if let lottoNumbers = storedLottoNumbers["\(lottoRoundToKnow)회차"] {
    print("\(lottoRoundToKnow)회차의 로또 당첨 번호는 \(lottoNumbers.map{ String($0) }.joined(separator: ", ")) 입니다.")
}
