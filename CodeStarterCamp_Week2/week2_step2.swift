//
//  week2_step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 정경우 on 2022/11/01.
//

import Foundation

var winningLottoNumbers = Set<Int>()
let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var sameNumbers = Array(winningLottoNumbers.intersection(myLottoNumbers))

func makeLottoNumbers() {
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
        //winningLottoNumbers.insert(Int(arc4random_uniform(45)) + 1)
    }
}

func printLottoNumbers() {
    if sameNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for num in sameNumbers {
            if num != sameNumbers.last {
                print(num, terminator: ",")
            } else {
                print(num, terminator: " ")
            }
        }
            print("입니다!")
        } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

