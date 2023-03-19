//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
var pickedLottoNumbers: [String: Set<Int>] = [:]
var lottoRound: Int = 0

func pickLottoNumber() {
    var lottoNumber: Set<Int> = []
    
    while lottoNumber.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    saveLottoNumberAndRound(lottoNumber: lottoNumber)
}

func compareTwoNumbers(myLottoNumber: [Int], pickedLottoNumber: Set<Int>) -> [Int] {
    var correctNumber: [Int] = []
    for number in myLottoNumber {
        if pickedLottoNumber.contains(number) {
            correctNumber.append(number)
        }
    }
    return correctNumber
}

func printResult(_ correctNumber: [Int]) {
    if correctNumber.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0...correctNumber.count - 1 {
            if index == correctNumber.count - 1 {
                print(correctNumber[index], terminator: " ")
                break
            }
            print(correctNumber[index], terminator: ", ")
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func saveLottoNumberAndRound(lottoNumber: Set<Int>) {
    lottoRound += 1
    pickedLottoNumbers["\(lottoRound)회차"] = lottoNumber
}

func printNthRoundLottoNumber() {
    let Nth: String = "2회차"
    if let safeLottoNumber: Set<Int> = pickedLottoNumbers["\(Nth)"] {
        let NthRoundLottoNumber: [Int] = Array(safeLottoNumber)
        print("\(Nth)의 로또 당첨 번호는 ", terminator: "")
        for index in 0...NthRoundLottoNumber.count - 1 {
            if index == NthRoundLottoNumber.count - 1 {
                print(NthRoundLottoNumber[index], terminator: " ")
                break
            }
            print(NthRoundLottoNumber[index], terminator: ", ")
        }
        print("입니다.")
    }
}

for _ in 1...5 {
    pickLottoNumber()
}
printNthRoundLottoNumber()
