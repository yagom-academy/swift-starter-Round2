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

func matchingLottoNumber() {
    let convertMyNumArrayToSet = Set(myLottoNumbers)
    let matchedLottoNumber = newLottoNum.intersection(convertMyNumArrayToSet)
    
    if matchedLottoNumber.count > 0 {
        let winlottoNumber = Array(matchedLottoNumber)
        let printWinNumber = winlottoNumber.map { Int($0) }
        
        print("축하합니다! 겹치는 번호는 \(printWinNumber)입니다.")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

makeNewLottoNumber()
matchingLottoNumber()
