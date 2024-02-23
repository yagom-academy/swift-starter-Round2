//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func pickRandomNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6 {
        var lottoRangeNumbers = Array(1...45)
        if let randomNumber = lottoRangeNumbers.randomElement() {
            lottoNumbers.insert(randomNumber)
            lottoRangeNumbers.removeAll(where: { $0 == randomNumber })
        } else { lottoRangeNumbers = Array(1...45) }
    }

    print("로또 번호 \(lottoNumbers.sorted().map { "\($0)" }.joined(separator: ", "))")
    return lottoNumbers
}

let myLottoNumbers = [2,3,8,21,38,44]

func checkOverlapNumbers(myNumbers: Array<Int>, lottoNumbers: Set<Int>) {
    let overLapNumbers = lottoNumbers.intersection(myNumbers)
    
    if overLapNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는 \(overLapNumbers.sorted().map { "\($0)" }.joined(separator: ", ")) 입니다!")
    } else { print("아쉽지만 겹치는 번호가 없습니다.") }
}

checkOverlapNumbers(myNumbers: myLottoNumbers, lottoNumbers: pickRandomNumbers())

