//
//  week2_step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 정경우 on 2022/11/01.
//
import Foundation

var winningLottoNumbers = Set<Int>()
let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var sameNumber = winningLottoNumbers.intersection(myLottoNumbers)

func makeLottoNumbers() {
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int(arc4random_uniform(45)) + 1)
    }
    
    if sameNumber.count != 0 {
        print("축하합니다! 겹치는 번호는 \(sameNumber) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
}
