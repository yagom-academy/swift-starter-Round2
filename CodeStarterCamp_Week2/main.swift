//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeWinLottoNumbers() -> Set<Int> {
    
    var lottoNumbers = Array<Int>(1...45)
    var winLottoNumbers: Set<Int> = []
    
    for _ in 1...6 {
        var randomNumber: Int = 0
        
        repeat{
            randomNumber = lottoNumbers.randomElement()!
        }
        while !lottoNumbers.contains(randomNumber)
                
        winLottoNumbers.insert(randomNumber)
        lottoNumbers = lottoNumbers.filter() {$0 != randomNumber}
    }
    
    return winLottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let overlappingNumbers: [Int] = Array(makeWinLottoNumbers().intersection(myLottoNumbers)).sorted()

if overlappingNumbers.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다. 겹치는 번호는 ",terminator: "")
    for i in overlappingNumbers {
        if i == overlappingNumbers[overlappingNumbers.count - 1] {
            print(i,terminator: "")
        }
        else {
            print(i,terminator: ",")
        }
    }
    print(" 입니다!")
}

