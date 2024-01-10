//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 회차와 번호를 저장하는 Dictionary
var dict = [String: [Int]]()

// 회차와 로또번호를 저장하는 함수
func makeLottoRound() {
    var lottoNumber = Set<Int>()
    
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    
    dict["\(dict.count + 1)회차"] = lottoNumber.map{Int($0)}
}

// 원하는 회차를 찾는 함수
func findLottoRound(roundNumber round: Int) {
    if let roundInfo = dict["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(roundInfo.map{String($0)}.joined(separator: ", ")) 입니다.")
    } else {
        print("진행되지 않은 회차입니다.")
    }
}



// 테스트 코드
//makeLottoRound()
//makeLottoRound()
//makeLottoRound()
//makeLottoRound()
//makeLottoRound()
//
//findLottoRound(roundNumber: 6)
//findLottoRound(roundNumber: 13)
//findLottoRound(roundNumber: 100)


