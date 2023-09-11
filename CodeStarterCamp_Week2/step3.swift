//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 이승연 on 2023/09/11.
//

import Foundation

var lotto: Dictionary<String, Any> = ["1회차": [1, 2, 3, 4, 5, 6]]
var roundNumber = 1
var myRound = "3회차"

func DictionarySaveLotto() {
    makeLottoNumbers()
    roundNumber += 1
    lotto["\(roundNumber)회차"] = result
}

func myRoundLotto() {
    repeat {
        DictionarySaveLotto()
    } while roundNumber < 5

    let lottoOptional: Any? = lotto[myRound]

    switch lottoOptional {
        case .none:
            print("none")
        case .some(let val):
            print("\(myRound)의 로또 당첨 번호는 \(val)")
    }
}





