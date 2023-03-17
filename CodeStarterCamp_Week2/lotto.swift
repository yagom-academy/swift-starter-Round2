//
//  lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 양주원 on 2023/03/15.
//

import Foundation


func winLottoNumbers() -> Set<Int> {
    var winningNumberSet: Set<Int> = Set<Int>()
        while winningNumberSet.count < 6 {
            winningNumberSet.insert(Int.random(in: 1..<45))
    }
    return winningNumberSet
}

func checkWinMyNumbers(winLottoNumbers: Set<Int>) {
    var myLottoNumbers = Set(myLottoNumbers)
    let intersection: Set<Int> = myLottoNumbers.intersection(winLottoNumbers)
        if intersection == intersection {
            print("축하합니다! 겹치는 번호는", intersection, "입니다!")
        } else {
            print("아쉽지만 겹치는 번호가 없습니다.")
        }
    
}
