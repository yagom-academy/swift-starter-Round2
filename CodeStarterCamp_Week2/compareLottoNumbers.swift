//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/18.
//

import Foundation

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var randomLottoNumber = Set<Int>()

func makeLottoNumbers() {
    while randomLottoNumber.count < 6 {
        randomLottoNumber.insert(Int.random(in:1...45))
    }
}

@discardableResult
func checkSameLottoNumbers() -> Set<Int> {
    var sameLottoNumbers = Set<Int>()
    sameLottoNumbers = randomLottoNumber.intersection(myLottoNumbers)
    return sameLottoNumbers
}

func resultLottoNumbers(sameLottoNumbers: Set<Int>) {
    if sameLottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        var sameLottoNumbersString = String()
        for stringArray in sameLottoNumbers {
            sameLottoNumbersString += String(stringArray) + ","
        }
        sameLottoNumbersString.removeLast()
        
        print(sameLottoNumbersString, terminator: " ")
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func compareLottoNumbers() {
    makeLottoNumbers()
    checkSameLottoNumbers()
    resultLottoNumbers(sameLottoNumbers: checkSameLottoNumbers())

    print(randomLottoNumber.sorted())
}
