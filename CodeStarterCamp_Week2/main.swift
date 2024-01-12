//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var lottoRounds = [String: [Int]]()


func makeLottoRound() {
    var lottoNumber = Set<Int>()
    
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    
    lottoRounds["\(lottoRounds.count + 1)회차"] = lottoNumber.map{Int($0)}
}


func findLottoRound(number round: Int) {
    if let roundInfo = lottoRounds["\(round)회차"] {
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
//findLottoRound(number: 6)
//findLottoRound(number: 13)
//findLottoRound(number: 100)


