//
//  로또함수구현하기.swift
//  CodeStarterCamp_Week2
//
//  Created by Lee minyeol on 2023/05/27.
//

import Foundation

let myLottoNumbers: Set<Int> =  [1, 2, 3, 4, 5, 6]
let numbers = Array(1...45)
var lotto: Set<Int> = []

    while lotto.count < 6 {
        lotto.insert(numbers.randomElement()!)
}

func matchingLotto(myLottoNumbers: Set<Int>, lotto: Set<Int>) {
    let result: Set<Int> = myLottoNumbers.intersection(lotto)
    if result.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }         else {
        print("축하합니다! 겹치는 번호는 \(result)입니다!")
    }
}
