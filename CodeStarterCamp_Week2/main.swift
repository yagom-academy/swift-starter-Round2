//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 7, 8, 9, 21, 31]
var thisWeekLottoNumber: Array<Int> = []
var winningNumber: Set<Int> = []

func generateLottoNumber() -> Array<Int> {
    var drawLotto: Array<Int> = []
    
    while drawLotto.count <= 6 {
        drawLotto.append(Int.random(in: (1...45)))
    }
    return(drawLotto)
}

func compareLottoNumber(drawLotto: [Int]) {
    for temp in myLottoNumbers {
        if thisWeekLottoNumber.contains(temp) {
            winningNumber.insert(temp)
        }
    }
    switch winningNumber.count {
    case 1 ..< 6:
        print("축하합니다. 겹치는 번호는 \(winningNumber.sorted()) 입니다!")
    default:
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

thisWeekLottoNumber = generateLottoNumber()
compareLottoNumber(drawLotto: thisWeekLottoNumber)
