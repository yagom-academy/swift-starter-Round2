//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Set<Int> = [2,5,16,27,35,40]

var randomLottoNumbers: Set<Int> = Set<Int>()

func makeLottoNumbers() {
    while randomLottoNumbers.count <= 6 {
        let randomNum = Int.random(in: 1...45)
        randomLottoNumbers.insert(randomNum)
    }
    return
}

func checkAndAlertSameLottoNumbers() {
    let sameNumbers : Set<Int> = myLottoNumbers.intersection(randomLottoNumbers)
    switch sameNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    default:
        let sameNumbersList = Array(sameNumbers)
        let result = sameNumbersList.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(result)입니다!")
    }
}

checkAndAlertSameLottoNumbers()

