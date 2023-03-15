//
//  lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 양주원 on 2023/03/15.
//

import Foundation


func collectLotto() -> Set<Int> {
    var numberSet: Set<Int> = Set<Int>()
        while numberSet.count < 6 {
        numberSet.insert(Int.random(in: 1..<45))
    }
    return numberSet
}



func checkNumbers(myLottoNumbers: [Int]) {
    let intersection: [Int] = myLottoNumbers.intersection(collectLotto)
    if intersection.count > 5 {
        print("축하합니다! 겹치는 번호는 1, 2, 3, 4, 5, 6 입니다!")
    } else if intersection.count < 1 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
