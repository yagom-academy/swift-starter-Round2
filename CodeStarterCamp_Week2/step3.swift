//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 이승연 on 2023/09/11.
//

import Foundation

var lottoDictionary = [String : Set<Int>]()

func saveLottos() {
    for i in 1...5 {
        let lotto = makeLottoNumbers()
        let round = "\(i)회차"
        lottoDictionary[round] = lotto
    }
}

func searchLotto(round: Int) {
    
    if let lotto = lottoDictionary["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 ", terminator: "")
        for number in lotto {
            print(number, terminator: ", ")
        }
    }
}




