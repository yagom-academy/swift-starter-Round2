//
//  CreateLottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by Seokjune Hong on 2021/12/22.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
var intersectionLottoNumber: Set<Int> = Set<Int>()

func createLottoNumber() -> Set<Int> {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func printIntersectionLottoNumber(selectedLottoNumber: [Int]) {
    intersectionLottoNumber = createLottoNumber().intersection(selectedLottoNumber)
    var transformIntersectionLottoNumber: Array<String> = Array<String>()
    
    for transformIntToString in intersectionLottoNumber {
        transformIntersectionLottoNumber.append("\(transformIntToString)")
    }
    
    if intersectionLottoNumber.count > 0 {
        print("축하합니다! 겹치는 번호는 \((transformIntersectionLottoNumber.sorted()).joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

