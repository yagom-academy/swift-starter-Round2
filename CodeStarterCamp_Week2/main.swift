//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - lottoNumberGenerator
func lottoNumberGenerator() -> Set<Int> {
    var lottoNumber = Set<Int>()
    while lottoNumber.count < 6 {
        var randomNumber = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}

//MARK: - winningNumbers
let myLottoNumbers:[Int] = [42, 2, 10, 14, 25]

func overlappingNumbers(lottoNumber: Set<Int>, myNumber: [Int]) {
    let intersection = lottoNumberGenerator().intersection(myLottoNumbers)
    let intersectionJoined = intersection.map(String.init).joined(separator: ", ") //Set, joined 공식문서 다시 참고하기
    if intersection == [] {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(intersectionJoined)입니다!") //순서가 없는 Set는 joined를 사용하지 못함
    }
}

overlappingNumbers(lottoNumber: lottoNumberGenerator(), myNumber: myLottoNumbers)


