//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

var newLottoNum = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeNewLottoNumber() {
    var randomNumber: Int
    
    while newLottoNum.count != 6 {
        randomNumber = Int.random(in: 1...45)
        if newLottoNum.contains(randomNumber) != true {
            newLottoNum.insert(randomNumber)
        }
    }
    print(newLottoNum)
}

makeNewLottoNumber()

