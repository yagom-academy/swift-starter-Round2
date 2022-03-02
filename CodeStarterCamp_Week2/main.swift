//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: Set<Int> = Set<Int>()
var lottoNumbers: Set<Int> = Set<Int>()

func chooseNumbers() -> Set<Int> {
    var randomSixNumbers: Set<Int> = Set<Int>()
    while randomSixNumbers.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        randomSixNumbers.insert(randomNumber)
    }
    return randomSixNumbers
}

func chooseAllNumbers() {
    myLottoNumbers = chooseNumbers()
    lottoNumbers = chooseNumbers()
}


func compareNumbers() -> Set<Int> {
    let intersection: Set<Int> = myLottoNumbers.intersection(lottoNumbers)
    return intersection
}

switch compareNumbers().count {
case 0:
    print("아쉽지만 겹치는 번호가 없습니다.")
case 1...6:
    print("축하합니다! 겹치는 번호는 \(compareNumbers) 입니다!")
default:
    print("unknown")
}
