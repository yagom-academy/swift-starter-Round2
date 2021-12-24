//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func lottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func printWinngNumber() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4 ,5, 6]
    let matchedLottoNumbers = lottoNumbers().intersection(myLottoNumbers)
    if matchedLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchedLottoNumbers.sorted()) 입니다 ! ")
    }
}
printWinngNumber()
