//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - 로또
// MARK: 로또 추첨기

var lotto: Set<Int> = []
while lotto.count < 6 {
    let lottoNumber = Int.random(in: 1...45)
    lotto.insert(lottoNumber)
}

print("이번 당첨 번호는 \(lotto)입니다.")


// MARK: 내 번호와 맞추기

let myLottoNumbers: [Int] = [1, 4, 9, 17, 29, 33]
let intersection: Set<Int> = lotto.intersection(myLottoNumbers)
let intersectionCount = intersection.count
let intersectionSorted = intersection.sorted()

let intToStr = intersectionSorted.map { (value : Int) -> String in
    return String(value)
}
let setToStr = intToStr.joined(separator: ", ")



print("내가 찍은 번호는 \(myLottoNumbers)입니다.")
if intersectionCount != 0 {
    print("축하합니다! 겹치는 번호는 \(setToStr) 입니다!")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}

