//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func compareLotto(by myLottoNumbers: [Int]) {
    let lottoNumbers: Set<Int> = generateLottoNumbers()
    let matchedLottoNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    
    printLottoResult(by: matchedLottoNumbers)
}

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: (1...45)))
    }
    
    return lottoNumbers
}

func printLottoResult(by matchedLottoNumbers: Set<Int>) {
    if matchedLottoNumbers.count > 0 {
        let matchNumbersString = matchedLottoNumbers
            .sorted()
            .map{ String($0) }
            .joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchNumbersString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
compareLotto(by: myLottoNumbers)
