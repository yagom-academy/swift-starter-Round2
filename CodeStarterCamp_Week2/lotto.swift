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
    let myLottoNumbers = Set(myLottoNumbers)
    let sameNumbers: Set<Int> = myLottoNumbers.intersection(winLottoNumbers)
    let arraySameNumbers = Array(sameNumbers)
    if arraySameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는", terminator: "")
        for row in arraySameNumbers {
            print(" \(row)", separator: ", ", terminator: "")
        }
        print(" 입니다!")
    }
}

