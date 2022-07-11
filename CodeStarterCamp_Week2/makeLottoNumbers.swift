//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/11.
//

import Foundation

var randomNumber: Set<Int> = Set<Int>()

func winningLottoNumbers() {
//    var randomNumber: Set<Int> = Set<Int>() 기존에 이곳에 변수를 선언하였으나 아래에서 변수를 찾지못하여 위에서 따로 선언하였습니다.
    while randomNumber.count < 6 {
    randomNumber.insert(Int.random(in:1...45))
    }
}

func checkSameLottoNumbers() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let sameLottoNumbers = randomNumber.intersection(myLottoNumbers) // 이곳에서 randomNumber 변수를 읽어오지 못했습니다.
    if sameLottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(sameLottoNumbers)입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
