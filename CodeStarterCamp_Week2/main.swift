//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoDictionary = [String : Set<Int>]()
var numberFull: [Int] = Array<Int>(1...45)
var lottoNumber: Set<Int> = Set<Int>()

func pickRandomLottoNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}

func storeLottoNumber(round: Int) {
    lottoDictionary["\(round)회차"] = pickRandomLottoNumber()
}

func getLottoNumber() {
    for i in 1...5 {
        storeLottoNumber(round: i)
    }
}

func searchLottoNumber(times: Int) {
    if let lottoOptional = lottoDictionary["\(times)회차"] {
        print("\(times)회차의 로또 당첨 번호는 \(lottoOptional.map { String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("\(times)회차는 존재하지 않습니다.")
    }
}

getLottoNumber()
searchLottoNumber(times: 1)
searchLottoNumber(times: 2)
searchLottoNumber(times: 3)
searchLottoNumber(times: 4)
searchLottoNumber(times: 5)

