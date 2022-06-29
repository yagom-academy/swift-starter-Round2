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
