//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]

func pickLottoNumber() -> Set<Int> {
    var lottoNumber: Set<Int> = []
    
    while lottoNumber.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}

func isWinning(myLottoNumber: [Int], pickedLottoNumber: Set<Int>) {
    var correctNumber: [Int] = []
    for number in myLottoNumber {
        if pickedLottoNumber.contains(number) {
            correctNumber.append(number)
        }
    }
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

let pickedLottoNumber: Set<Int> = pickLottoNumber()
isWinning(myLottoNumber: myLottoNumber, pickedLottoNumber: pickedLottoNumber)
