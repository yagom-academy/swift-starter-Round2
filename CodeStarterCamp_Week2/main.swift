//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = []
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    return randomNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoNumbers = makeLottoNumbers()

let intersection: Set<Int> = lottoNumbers.intersection(myLottoNumbers)

if intersection.count > 0 {
    print("축하합니다! 겹치는 번호는 \(intersection.map{String($0)}.joined(separator:",")) 입니다")
}
else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
