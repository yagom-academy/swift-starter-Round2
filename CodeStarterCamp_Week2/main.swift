//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var winningLottoNumber: [Int] = []
var chosenWinningNum: Int = 0
var sameLottoNumber: [Int] = []

func castWinningLotto() {
    while winningLottoNumber.count < 6 {
        chosenWinningNum = Int.random(in : 1..<46)
        if winningLottoNumber.contains(chosenWinningNum) {
            continue
        } else {
            winningLottoNumber.append(chosenWinningNum)
        }
    }
}

func checkLottoNumber(with winningLotto: Array<Int>, with myLotto: Array<Int> ) {
    
    for winningNumber in winningLotto {
        for myNumber in myLotto {
            if winningNumber == myNumber {
                sameLottoNumber.append(myNumber)
            }
        }
    }
    
    if sameLottoNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(sameLottoNumber) 입니다!")
    }
}

let myLottoNumber: [Int] = [13, 3, 37, 7, 11, 23]

castWinningLotto()
checkLottoNumber(with: winningLottoNumber, with: myLottoNumber)
