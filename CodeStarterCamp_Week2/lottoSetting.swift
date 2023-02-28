//
//  lottoSetting.swift
//  CodeStarterCamp_Week2
//
//  Created by minsong kim on 2023/02/28.
//

import Foundation


var lottoSet: Set<Int> = Set<Int>()

func pickNumbers() {
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: (1...45)))
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkMyLotto() {
    var matchSet: Set<Int> = Set<Int>()
    
    for matchNumber in lottoSet {
        if myLottoNumbers.contains(matchNumber) {
            matchSet.insert(matchNumber)
        }
    }
    
    if matchSet.count > 0 {
        print ("축하합니다! 겹치는 번호는 \(matchSet) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

