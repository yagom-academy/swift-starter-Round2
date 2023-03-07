//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func selectLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return lottoNumbers
}

func checkLottoNumbers(with selectLottoNumbers: Set<Int>) {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let result: [Int] = selectLottoNumbers.intersection(myLottoNumbers).sorted()
    if result.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for numberIndex in 0...result.count-1 {
            let lottoNumber = result[numberIndex]
            if numberIndex < result.count-1 {
                print("\(lottoNumber), ", terminator: "")
            } else {
                print("\(lottoNumber) ", terminator: "")
            }
        }
        print("입니다!")
    }
}

checkLottoNumbers(with: selectLottoNumbers())
