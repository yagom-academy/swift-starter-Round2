//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeWinningNumbers() -> Set<Int> {
    var result: Set<Int> = Set<Int>()
    let lottoSize: Int = 6
    
    while result.count != lottoSize {
        result.insert(Int.random(in: 1...45))
    }
    
    return result
}

func checkLottoNumbers(myNumbers: Set<Int>, answer: Set<Int>) {
    let result: Set<Int> = myNumbers.intersection(answer)
    let resultStr: String = String(describing: result).dropFirst().dropLast().description
    
    if result.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(resultStr) 입니다!")
    }
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let winningNumbers = makeWinningNumbers()
checkLottoNumbers(myNumbers: myLottoNumbers, answer: winningNumbers)

