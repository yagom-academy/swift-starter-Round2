//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNum: Set<Int> = []
func lottoWin() {
    while lottoNum.count < 6 {
        lottoNum.insert(Int.random(in: 1...45))
    }
}

lottoWin()

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func drawLot() {
    let num: Set<Int> = lottoNum.intersection(myLottoNumbers)
    let numString = num.sorted().map {String($0)}.joined(separator: ", ")

    if num.count > 0 {
        print("축하합니다! 겹치는 번호는 \(numString) 입니다!")
    } else { print("아쉽지만 겹치는 번호가 없습니다.") }
}

drawLot()
