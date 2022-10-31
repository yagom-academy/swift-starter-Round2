//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation




// 로또번호 생성하는 함수
func makeLottoNumbers() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}


//번호가 맞는지 맞춰보는 함수
let winningNumbers: Set<Int> = makeLottoNumbers()
var myLottoNumbers: Set<Int> = [2, 18, 5, 28, 12, 8]

func checkLottoNumbers() {
    let lottoNumbers = Array( winningNumbers.intersection(myLottoNumbers))
    let stringOverlapNumbers = lottoNumbers.map {String($0)}
    let overlapNumbers = stringOverlapNumbers.joined(separator: ", ")
    if lottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는", overlapNumbers, "입니다!")
    } else if lottoNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
checkLottoNumbers()




