//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoWinNumbers: Set<UInt32> = Set<UInt32>()

while lottoWinNumbers.count < 6 {
    let element = arc4random_uniform(45)
    if element != 0 {
        if lottoWinNumbers.contains(element) == false {
            lottoWinNumbers.insert(element)
        }
    }
}

let myLottoNumbers: [UInt32] = [1, 2, 3, 4, 5, 6]
let intersection: Set<UInt32> = lottoWinNumbers.intersection(myLottoNumbers)

if intersection.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(intersection.sorted())입니다!")
}
