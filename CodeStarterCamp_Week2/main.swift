//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makePool() -> Array<Int> {
    var poolNumbers: [Int] = []
    
    while poolNumbers.count < 6 {
        let pickedNumber = Int.random(in: 1...45)
        if !poolNumbers.contains(pickedNumber) {
            poolNumbers.append(pickedNumber)
        } else {
            continue
        }
    }
    poolNumbers.sort()
    return poolNumbers
    }
    
var winningNumbers = makePool()
print(winningNumbers)

let myLottoNumbers: [Int] = [11, 22, 33, 44, 45, 46]

func checkingNumbers(){
    var matchedNumbers: [Int] = []

    for myNumber in myLottoNumbers {
        if winningNumbers.contains(myNumber) {
            matchedNumbers.append(myNumber)
        }
    }
    if matchedNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchedNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkingNumbers()
