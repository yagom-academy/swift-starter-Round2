//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoCountLimit = 6
let lottoNumberLimit = 45
let lottoNumberRange = 1...lottoNumberLimit

func generateRandomNumber() -> Int{
    return Int.random(in: lottoNumberRange)
}

func generateLotto() -> [Int]{
    var index = 0
    var lotto: [Int] = [Int](repeating: 0, count: lottoCountLimit)
    var isUseNumber: [Bool] = [Bool](repeating: false, count: lottoNumberLimit)

    while index < lottoCountLimit {
        let generatedNumber = generateRandomNumber()
        if isUseNumber[generatedNumber] == false {
            isUseNumber[generatedNumber] = true
            lotto[index] = generatedNumber
            index += 1
        }
    }

    return lotto
}

func getWinningNumbers() -> [Int] {
    let lottoNumbers = generateLotto()
    let myLottoNumbers = [1, 2, 3, 4, 5, 6]

    var winningNumbers: [Int] = []
    
    for number in myLottoNumbers {
        if lottoNumbers.contains(number) {
            winningNumbers.append(number)
        }
    }
    
    return winningNumbers
}
