//
//  CreateLottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by Seokjune Hong on 2021/12/22.
//

import Foundation

var LottoNumberGroup: Set<Int> = Set<Int>()
var intersectionLottoNumber: Set<Int> = Set<Int>()

func CreateLottoNumber() -> Set<Int> {
    while LottoNumberGroup.count < 6 {
        LottoNumberGroup.insert(Int.random(in: 1...45))
    }
    return LottoNumberGroup
}


func printIntersectionLottoNumber(chooseLottoNumber: [Int]) {
    intersectionLottoNumber = CreateLottoNumber().intersection(chooseLottoNumber)
    
    if intersectionLottoNumber.count > 1 {
        print("축하합니다! 겹치는 번호는 \(intersectionLottoNumber.sorted()) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
