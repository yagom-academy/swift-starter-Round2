//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - lottoNumberGenerator
func lottoNumberGenerator() -> Set<String> {
    var lottoNumber = Set<String>()
    while lottoNumber.count < 6 {
        var randomNumber = String(Int.random(in: 1...45))
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}

//MARK: - joinedIntersection
let myLottoNumbers:[String] = ["42", "2", "10", "14", "25"]

func joinedIntersection(lottoNumber: Set<String>, myNumber: [String]) -> String {
    let intersection = lottoNumber.intersection(myNumber)
    return intersection.map{String($0)}.joined(separator: ", ")
}

//MARK: - overlappingNumbers
func overlappingNumbers(lottoNumber: Set<String>, myNumber: [String]) {

    if joinedIntersection(lottoNumber: lottoNumber, myNumber: myNumber) == ""  {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(joinedIntersection(lottoNumber: lottoNumber, myNumber: myNumber))입니다!")
    }
}

overlappingNumbers(lottoNumber: lottoNumberGenerator(), myNumber: myLottoNumbers)

