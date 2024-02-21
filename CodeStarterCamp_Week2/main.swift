//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNum = Set<Int>()
var randomNum = Int()

func pickRandomNum() {
    while lottoNum.count < 6 {
        lottoNum.insert(Int.random(in: 0...45))
    }
    print("로또 번호 \(lottoNum.sorted())")
}

let myLottoNumbers = [2,3,8,21,38,44]

func checkOverlapNum(myNum: Array<Int>, lottoNum: Set<Int>) {
    let overLapNum = lottoNum.intersection(myNum)
    
//    if overLapNum.count != 0 {
//        print("축하합니다! 겹치는 번호는 \(overLapNum.sorted()) 입니다!")
//    } else { print("아쉽지만 겹치는 번호가 없습니다.") }
//
    
    switch overLapNum.count != 0 {
    case true : print("축하합니다! 겹치는 번호는 \(overLapNum.sorted()) 입니다!")
    case false : print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

pickRandomNum()
checkOverlapNum(myNum: myLottoNumbers, lottoNum: lottoNum)

