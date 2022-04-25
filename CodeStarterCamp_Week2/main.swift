//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var winLottoNumbers: [Int] = makeLottoNumbers()
var myWinLottoNumbers: [Int] = checkLottoNumbers(winLottoNumbers: winLottoNumbers, myLottoNumbers: myLottoNumbers)
printLottoNumbers(winNumber: myWinLottoNumbers)

func makeLottoNumbers() -> [Int] {
    var winNumbers: [Int] = []
    
    while winNumbers.count < 6 {
        let winNumber = Int.random(in: 1...45)
        if !winNumbers.contains(winNumber) {
            winNumbers.append(winNumber)
        }
    }
    return winNumbers
}

func checkLottoNumbers(winLottoNumbers: [Int], myLottoNumbers: [Int]) -> [Int] {
    var myWinNumber: [Int] = []
    
    for number in winLottoNumbers {
        if myLottoNumbers.contains(number) {
            myWinNumber.append(number)
        }
    }
    return myWinNumber
}

func printLottoNumbers(winNumber: [Int]) {
    var resultString: String = ""
    if myWinLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        for result in myWinLottoNumbers {
            if myWinLottoNumbers.first == result {
                resultString.append("\(result)")
            } else {
                resultString.append(", \(result)")
            }
        }
        print("축하합니다! 겹치는 번호는 \(resultString) 입니다!")
    }
}
