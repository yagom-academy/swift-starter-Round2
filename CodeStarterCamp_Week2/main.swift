//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    print(lottoNumber)
    return lottoNumber
}

func compareNumber(lottoNumber: Set<Int>, mylottoNumbers: Array<Int>) {
    var containNumber: [Int] = []
    for i in 0...mylottoNumbers.count-1 {
        if lottoNumber.contains(mylottoNumbers[i]) {
            containNumber.append(mylottoNumbers[i])
        }
    }
    if containNumber.count != 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        
        for j in 0...containNumber.count-1 {
            if j == containNumber.count-1 {
                print("\(containNumber[j])", terminator: " ")
            } else {
                print("\(containNumber[j])", terminator: ", ")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
compareNumber(lottoNumber: makeNumber(), mylottoNumbers: myLottoNumbers)
