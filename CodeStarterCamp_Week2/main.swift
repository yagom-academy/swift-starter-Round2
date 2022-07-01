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
var sameLottoNumber: [String] = []

func chooseWinningLotto() {
    while winningLottoNumber.count < 6 {
        chosenWinningNum = Int.random(in : 1...45)
        if winningLottoNumber.contains(chosenWinningNum) == false {
            winningLottoNumber.append(chosenWinningNum)
        }
    }
}

func checkLottoNumber(with winningLotto: Array<Int>, with myLotto: Array<Int> ) {
    
    for winningNumber in winningLotto {
        if myLotto.contains(winningNumber) == true {
            sameLottoNumber.append(String(winningNumber))
        }
    }
    
    if sameLottoNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameLottoNumber.joined(separator: ", ")) 입니다!")
    }
}

let myLottoNumber: [Int] = [13, 3, 37, 7, 11, 23]

chooseWinningLotto()
checkLottoNumber(with: winningLottoNumber, with: myLottoNumber)

