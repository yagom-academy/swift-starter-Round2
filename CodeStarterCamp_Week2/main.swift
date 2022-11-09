//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert((Int.random(in: 1...10)))
    }
    
    return lottoNumbers
}

func compareLottoNumbers(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) -> Array<Int> {
    var compareNumbers: [Int] = []
    
    for num in myLottoNumbers {
        if lottoNumbers.contains(num) {
            compareNumbers.append(num)
        }
    }
    
    return compareNumbers
}

func printLottoNumbers(compareNumber: [Int]) {
    if compareNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for num in compareNumber {
            if num == compareNumber[0] {
                print("\(num)", terminator: "")
            } else {
                print(", \(num)", terminator: "")
            }
        }
        print(" 입니다!")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoNumbers = createLottoNumbers()
var compareNumbers = compareLottoNumbers(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)
compareNumbers = compareNumbers.sorted()

printLottoNumbers(compareNumber: compareNumbers)
