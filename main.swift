//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


func createLottoNumbers() {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

func checkNumber(){
    var winNumber = Set<Int> ()
    winNumber = lottoNumbers.intersection(myLottoNumbers)
    if (winNumber.count == 0) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(winNumber)입니다!")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = Set<Int> ()

createLottoNumbers()
print(lottoNumbers)
checkNumber()
