//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


var lottoNumber: Set<Int> = Set<Int>()

// 로또번호 생성하는 함수
func makeLottoNumbers() -> Set<Int> {
    while lottoNumber.count < 7 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}
//번호가 맞는지 맞춰보는 함수
let winningNumbers: Set<Int> = makeLottoNumbers()
var myLottoNumbers: Set<Int> = [2, 18, 5, 28, 12, 8]

func checkLottoNumbers() {
        let intersection: Set<Int> = winningNumbers.intersection(myLottoNumbers)
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersection) 입니다!")
    }
    else if intersection.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
        }
    }

checkLottoNumbers()
