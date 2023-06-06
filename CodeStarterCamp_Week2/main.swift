//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoDictionary = [String : Array<Int>]()
var numberFull: [Int] = Array<Int>(1...45)
var lottoNumber: Set<Int> = Set<Int>()

func makeRandomLottoNumber() -> Array<Int> {
    var lottoNumber: Set<Int> = []
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return Array(lottoNumber)
}

func storeLottoNumber(round: Int) {
    lottoDictionary["\(round)회차"] = makeRandomLottoNumber()
}

func moveLottoNumber(from:Int, to:Int) {
    for i in 1...5 {
        storeLottoNumber(round: i)
    }
}

func searchLottoNumber(times: Int) {
    if let lottoOptional = lottoDictionary["\(times)회차"] {
        return print("\(times)회차의 로또 당첨 번호는 \(lottoOptional.map { String($0) }.joined(separator: ", ")) 입니다.")
    }
    return print("\(times)회차는 존재하지 않습니다.")
}

moveLottoNumber(from: 1, to: 5)
searchLottoNumber(times: 1)
searchLottoNumber(times: 2)
searchLottoNumber(times: 3)
searchLottoNumber(times: 4)
searchLottoNumber(times: 5)
