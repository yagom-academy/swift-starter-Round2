//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var lottoNumber: Set<Int> = []

func makeLotto(){
    
    while lottoNumber.count < 5{
        let randomNumber = 1 + Int(arc4random_uniform(45))
        lottoNumber.insert(Int(randomNumber))}
    print(lottoNumber)
}

func checkNumber(){
    let check: Set<Int> = myLottoNumbers.intersection(lottoNumber)
    if !check.isEmpty {
        print("축하합니다! 겹치는 번호는 \(check)입니다!")
    } else {
        print("아쉽지만 겹치는 값이 없습니다.")
    }
}

makeLotto()
checkNumber()
