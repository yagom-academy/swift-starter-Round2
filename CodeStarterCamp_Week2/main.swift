//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 지현 on 12/14/23.
//

import Foundation

var lottoRound: Int = 0
var lottoInfo: Dictionary<String, Set<Int>> = Dictionary<String, Set<Int>>()

func makeNumber() {
    var lottoNumber: Set<Int> = Set<Int>()
    lottoRound += 1
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    lottoInfo["\(lottoRound)회차"] = lottoNumber
}

func checkLottoNum(round: Int) {
    if let lottoNum = lottoInfo["\(lottoRound)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNum.map{String($0)}.joined(separator:", ")) 입니다.")
    }
}

for _ in 1...5 {
    makeNumber()
}

checkLottoNum(round: 2)
