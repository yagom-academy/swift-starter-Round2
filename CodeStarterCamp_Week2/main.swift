//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNums = Set<Int>()
var randomNums = Int()

func pickRandomNums() {
    while lottoNums.count < 6 {
        lottoNums.insert(Int.random(in: 0...45))
    }
    print("로또 번호 \(lottoNums.sorted())")
}

let myLottoNumbers = [2,3,8,21,38,44]

func checkOverlapNums(myNums: Array<Int>, lottoNums: Set<Int>) {
    let overLapNums = lottoNums.intersection(myNums)
    
//    if overLapNum.count != 0 {
//        print("축하합니다! 겹치는 번호는 \(overLapNum.sorted()) 입니다!")
//    } else { print("아쉽지만 겹치는 번호가 없습니다.") }
//
    
    switch overLapNums.count != 0 {
    case true : print("축하합니다! 겹치는 번호는 \(overLapNums.sorted()) 입니다!")
    case false : print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

pickRandomNums()
checkOverlapNums(myNums: myLottoNumbers, lottoNums: lottoNums)

