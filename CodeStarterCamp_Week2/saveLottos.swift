//
//  saveLottos.swift
//  CodeStarterCamp_Week2
//
//  Created by 임성묵 on 2023/09/11.
//

import Foundation

var pastLottoNumbers : [String : Set<Int>]  = ["1회차" : [1, 2, 3, 4, 5, 6]]
var lastRound = 1

func saveLottoNumbers(lottoNumbers : Set<Int>) {
    lastRound += 1
    pastLottoNumbers["\(lastRound)회차"] = lottoNumbers
}

func checkPastLottoNumbers() {
    for _ in 1...5 {
        randomLottos()
    }
    var lottoRoundPick : Set<Int>?
    let myRoundPick = 2
    var lottoRoundPickString = ""
    
    lottoRoundPick = pastLottoNumbers["\(myRoundPick)회차"]
    
    if lottoRoundPick == nil {
        print("회차가 존재하지 않습니다.")
    } else {
        for number in lottoRoundPick! {
            lottoRoundPickString.append("\(number), ")
        }
        lottoRoundPickString.removeLast()
        lottoRoundPickString.removeLast()
        print("\(myRoundPick)회차의 로또 당첨 번호는 \(lottoRoundPickString) 입니다.")
    }
        
}
