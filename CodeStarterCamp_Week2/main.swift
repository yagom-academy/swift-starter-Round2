//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

print("Hello, World!")

var chooseNumberSet = Set<Int>()
func makeLottoNumber() {
    while chooseNumberSet.count < 6 {
        chooseNumberSet.insert(Int.random(in: 1...45))
    }
}
var myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkNumberToLotto() {
    if chooseNumberSet.intersection(myLottoNumbers).count > 0 {
        print("축하합니다! 겹치는 번호는\(chooseNumberSet.intersection(myLottoNumbers))입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

makeLottoNumber()
checkNumberToLotto()
