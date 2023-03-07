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

func makeLottoSet() {
    while randomLottoNumbers.count <= 6 {
        let randomInt = Int.random(in: 1...45)
        randomLottoNumbers.insert(randomInt)
    }
    print(randomLottoNumbers)
}

func checkSameNumbers() {
    let sameNumbers : Set<Int> = myLottoNumbers.intersection(randomLottoNumbers)
    
    switch sameNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    default:
        let sameNumbersArray = Array(sameNumbers)
        let arrayToStr = sameNumbersArray.map { String($0) }
        let result = arrayToStr.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(result)입니다!")
    }
}

makeLottoSet()
checkSameNumbers()

