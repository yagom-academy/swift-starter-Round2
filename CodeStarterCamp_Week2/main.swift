//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var winningNumbers: Set<Int> = []
var randomNumber: Int?
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]


func createRandomNumber() {
    randomNumber = Int.random(in: 1...45)
}

func createWinningNumbers() -> Set<Int> {
    
    while winningNumbers.count < 6 {
        createRandomNumber()
        if let lottoNumber = randomNumber {
            winningNumbers.insert(lottoNumber)
        } else {
            print("wrong input")
            break
        }
    }
    print("당첨 번호: \(winningNumbers)")
    return winningNumbers
}

func compareLottoNumbers(_ winningNumbers: Set<Int>, _ myNumbers: [Int]) -> String {
    var matchedNumbers: String = ""
    var winningResult: String = ""
    var failResult: String = ""
    var wrongResult: String = ""
    
    if myNumbers.count < 1 || myNumbers.count > 7 {
        wrongResult = "로또 번호를 입력하지 않았거나, 너무 많은 번호가 있습니다."
        return wrongResult
    } else {
        for myNumber in myNumbers {
            if winningNumbers.contains(myNumber) {
                matchedNumbers += "\(myNumber), "
            } else {
                continue
            }
        }
        let lastComma = matchedNumbers.lastIndex(of: ",") ?? matchedNumbers.endIndex
        let removeCommaNumbers = matchedNumbers[..<lastComma]
        if matchedNumbers.count > 0 {
            winningResult = "축하합니다! 겹치는 번호는 \(removeCommaNumbers) 입니다!"
            return winningResult
        } else {
            failResult = "아쉽지만 겹치는 번호가 없습니다."
            return failResult
        }
    }
}

func checkLotto(_ myNumbers: [Int]) {
    print(compareLottoNumbers(createWinningNumbers(), myNumbers))
}

checkLotto(myLottoNumbers)








