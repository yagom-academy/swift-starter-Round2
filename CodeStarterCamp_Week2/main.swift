//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func winLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let randomNumbers = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumbers)
    }
    return lottoNumbers
}

let myLottoNumbers: Set<Int> = [5, 19, 34, 25, 45, 23]
let intersection: Set<Int> = winLottoNumbers().intersection(myLottoNumbers)

func checkLottoNumbers() {
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersection.map {String($0)}.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkLottoNumbers()
