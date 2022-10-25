//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [3, 7, 15, 27, 37, 41]
var winLottoNumbers: Set<Int> = []

func callLottoNumbers() {
    while winLottoNumbers.count < 6 {
        winLottoNumbers.insert(Int.random(in: 1...45))
    }
}

func checkOverlapNumbers() {
    if winLottoNumbers.intersection(myLottoNumbers).count > 0 {
        let overlapNumber: String = "축하합니다! 겹치는 번호는 \(winLottoNumbers.intersection(myLottoNumbers).sorted()) 입니다!"
        print(overlapNumber.components(separatedBy: ["[","]"]).joined())
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

callLottoNumbers()
checkOverlapNumbers()

