//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func compareTwoLottoNumbers(_ first: Set<Int>, _ second: Set<Int>) {
    let duplicateNumbers: Set<Int> = first.intersection(second)
    if duplicateNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ",
              "\(duplicateNumbers.map { String($0) }.joined(separator: ", "))",
              " 입니다!", separator: "")
    }
}

compareTwoLottoNumbers(myLottoNumbers, makeLottoNumbers())
