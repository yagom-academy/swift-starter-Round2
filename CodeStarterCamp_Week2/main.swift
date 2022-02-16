//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Swift

let myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]

var randomNumbers: Set<Int> = Set<Int>()

func generateRandomNumber() {
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
}

func checkLottoNumber(myNumbers: Array<Int>, winningNumber: Set<Int>) {
    var commonNumber: Array<Int> = Array<Int>()
    
    for element in winningNumber {
        if myNumbers.contains(element) {
            commonNumber.append(element)
        }
    }
    
    commonNumber.sort()
    
    if commonNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        var result: String = ""
        for index in 0...commonNumber.count-1 {
            result += String(commonNumber[index])
            result += ","
        }
        result.removeLast()
        print("축하합니다! 겹치는 번호는 \(result) 입니다!")
    }
}

generateRandomNumber()
checkLottoNumber(myNumbers: myLottoNumbers, winningNumber: randomNumbers)
