//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Set<Int> = [2,5,16,27,35,40]

func makeLottoNumbers() -> Set<Int> {
    var randomLottoNumbers: Set<Int> = Set<Int>()
    while randomLottoNumbers.count <= 6 {
        let randomNumber = Int.random(in: 1...45)
        randomLottoNumbers.insert(randomNumber)
    }
    return randomLottoNumbers
}

func checkSameLottoNumbers() {
    let sameNumbers : Set<Int> = myLottoNumbers.intersection(makeLottoNumbers())
    switch sameNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    default:
        let result = sameNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(result)입니다!")
    }
}

checkSameLottoNumbers()



