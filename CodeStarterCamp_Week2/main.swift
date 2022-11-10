//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func creatRandomNumbers() -> Set<Int> {
    var result: Set<Int> = Set()
    while result.count < 6 {
        let value = Int.random(in: 1...45)
        result.insert(value)
    }
    return result
}

func checkLottoNumbers(_ myLottoNumbers: Set<Int>) -> Set<Int> {
    let lottoNumbers: Set<Int> = [2, 3, 6, 19, 36, 39]
    let winningNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    return winningNumbers
}


func getWinningAnswer(_ winningNumbers: Set<Int>) -> String {
    var winningAnswer = ""
    if winningNumbers.count > 0 {
        winningAnswer += "축하합니다! 겹치는 번호는 "
        for numberValue in winningNumbers {
            winningAnswer += "\(numberValue) "
        }
        winningAnswer += "입니다!"
    } else {
        winningAnswer = "아쉽지만 겹치는 번호가 없습니다."
    }
    return winningAnswer
}

let myLottoNumbers = creatRandomNumbers()
let winningNumbers = checkLottoNumbers(myLottoNumbers)
print(getWinningAnswer(winningNumbers))
