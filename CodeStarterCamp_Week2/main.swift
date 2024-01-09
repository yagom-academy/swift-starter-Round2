//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


// Step2

let myNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let generatedNumbers = generateLottoByLength(length: 6)
compareMyNumberToLotto(myNumbers: myNumbers)

// Step3

var lottoDictByRound: [Int: Set<Int>] = [:]

func printLottoByRound(selectRound: Int, lottoNumber: Set<Int>) {
    print("""
    \(selectRound)회차의 로또 당첨 번호는 \(lottoNumber) 입니다.
""")
}

let rounds = 5
let selectRound = 2

for round in 1...rounds {
    let generatedNumbers =  generateLottoByLength(length: 6)
    lottoDictByRound[round] = generatedNumbers
}

if let lottoNumbers = lottoDictByRound[selectRound] {
    printLottoByRound(selectRound: selectRound, lottoNumber: lottoNumbers)
} else {
    print("No lotto numbers found for round \(selectRound)")
}
