//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Swift

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

var randomNumber : Set<Int> = Set<Int>()

func generateRandomNumber() -> Void {
    while randomNumber.count < 6 {
        randomNumber.insert(Int.random(in: 1...45))
    }
}

