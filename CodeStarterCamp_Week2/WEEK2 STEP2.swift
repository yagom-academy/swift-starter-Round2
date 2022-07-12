//
//  WEEK2 STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by oh namjun on 2022/07/12.
//

import Foundation

func createRandomNumbers() -> Set<Int> {
    var randomNumbers: Set<Int> = Set<Int>()

    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }

    return randomNumbers
}

func raffleLotto(lottoNumbers: Set<Int>, RandomNumbers: Set<Int>) {
    let intersectionNumbers: Set<Int> = RandomNumbers.intersection(lottoNumbers)
    
    if intersectionNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \("\(intersectionNumbers)".trimmingCharacters(in: ["[","]"])) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
