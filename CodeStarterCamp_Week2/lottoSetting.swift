//
//  lottoSetting.swift
//  CodeStarterCamp_Week2
//
//  Created by minsong kim on 2023/02/28.
//
/*
import Foundation
var luckyNumbers: Set<Int> = Set<Int>()

func pickNumbers() {
    while luckyNumbers.count < 6 {
        luckyNumbers.insert(Int.random(in: (1...45)))
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkMyLotto() {
    var matchWithLuckyNumbers: [Int] = []
    
    for matchNumber in luckyNumbers {
        if myLottoNumbers.contains(matchNumber) {
            matchWithLuckyNumbers.append(matchNumber)
        }
    }
    
    if matchWithLuckyNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in matchWithLuckyNumbers {
            if index != matchWithLuckyNumbers[matchWithLuckyNumbers.count - 1] {
                print (index,terminator: ", ")
            } else {
                print (index, terminator: " ")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
*/
