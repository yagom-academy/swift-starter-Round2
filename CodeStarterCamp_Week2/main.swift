//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createRandomNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()

    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }

    return randomNumbers
}

func raffleLotto(lottoNumbers: Set<Int>, RandomNubers: Set<Int>) {
    let intersectionNumbers: Set<Int> = RandomNubers.intersection(lottoNumbers)

    if intersectionNumbers.count == 6 {
        print("축하합니다! 겹치는 번호는 \("\(RandomNubers)".trimmingCharacters(in: ["[","]"])) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let winLottoNumbers: Set<Int> = createRandomNumbers()
let myLottoNumbers: Set<Int> = createRandomNumbers()

raffleLotto(lottoNumbers: winLottoNumbers, RandomNubers: myLottoNumbers)
