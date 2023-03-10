//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createWinningLottoNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    print("당첨 번호는 \(randomNumbers)입니다.")
    return randomNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkOverlapNumbers(choose myLottoNumbers: [Int]) {
    let winningLottoNumbers: Set<Int> = createWinningLottoNumbers()
    let overlapNumbers: Set<Int> = winningLottoNumbers.intersection(myLottoNumbers)
    if overlapNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(overlapNumbers)입니다!")
    }
}

checkOverlapNumbers(choose: myLottoNumbers)
