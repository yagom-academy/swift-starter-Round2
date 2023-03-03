//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = [];
let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var sameLottoNumbers = Set<Int>()
var sameLottoNumbersChangeString = String()

func createLottoNumbers() {
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in:1...45))
    }
    print("이번 주 로또 번호 :",lottoNumber)
}

func compareLottoNumbers(confirmedNumber: Set<Int>, myLottoNumber: [Int]) {
    sameLottoNumbers = confirmedNumber.intersection(myLottoNumber)
    if sameLottoNumbers.count > 0 {
        for stringCount in sameLottoNumbers {
            sameLottoNumbersChangeString += String(stringCount) + ","
        }
        sameLottoNumbersChangeString.removeLast()
        print("축하합니다! 겹치는 번호는 \(sameLottoNumbersChangeString)입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
createLottoNumbers()
compareLottoNumbers(confirmedNumber: lottoNumber, myLottoNumber: myLottoNumbers)



