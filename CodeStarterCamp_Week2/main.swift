//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//찍은 번호
let myLottoNumbers: [Int] = [4, 13, 24, 36, 38, 45]

//로또 번호 배열
var lottoNumbers: [Int] = []

//로또 번호 랜덤 뽑기
func pickLottoNumbers() {
    while lottoNumbers.count < 6 {
        let numbers = Int.random(in: 1...45)
        if !lottoNumbers.contains(numbers) {
            lottoNumbers.append(numbers)
        }
    }
}

pickLottoNumbers()

//찍은 번호와 로또 번호가 일치하면 들어가는 배열
var coincideNumbers: [Int] = []

func matchNumber(_myLottoNumbers: [Int], lottoNumbers: [Int]) {
    for num in myLottoNumbers {
        if lottoNumbers.contains(num) {
            coincideNumbers.append(num)
        }
    }
}

matchNumber(_myLottoNumbers: myLottoNumbers, lottoNumbers: lottoNumbers)

func comfirmNumber() {
    if coincideNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(coincideNumbers.sorted()) 입니다!")
    }
}

comfirmNumber()
