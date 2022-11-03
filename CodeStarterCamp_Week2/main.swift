//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumber() -> Set<Int> {
    var numbers = Set<Int>()
    
    while numbers.count < 6 {
        numbers.insert(Int.random(in: 1...45))
    }
    
    return numbers
}

func checkCorrectNumber(myLottoNum: [Int], lottoNum: Set<Int>) -> [Int] {
    let myLotto = Set(myLottoNum)
    let correctNumber = myLotto.intersection(lottoNum)
    
    return Array(correctNumber).sorted()
}

func printCorrectNumber(correctNum: [Int]) {
    if correctNum.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for number in correctNum {
            if correctNum.last != number {
                print("\(number)", terminator: ", ")
            } else {
                print("\(number)", terminator: " ")
            }
        }
        print("입니다!")
    }
}

func checkMyLottoNumber(myLottoNumber: [Int]) {
    let randomLottoNumbers = makeLottoNumber()
    let correctNumber = checkCorrectNumber(myLottoNum: myLottoNumbers, lottoNum: randomLottoNumbers)

    printCorrectNumber(correctNum: correctNumber)
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

checkMyLottoNumber(myLottoNumber: myLottoNumbers)

