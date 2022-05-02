//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

var newLottoNumbers = Set<Int>()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]

func makeNewLottoNumber() {
    while newLottoNumbers.count != 6 {
        let randomNumbers = Int.random(in: 1...45)
            newLottoNumbers.insert(randomNumbers)
    }
}

func matchingLottoNumber() {
    makeNewLottoNumber()
    let matchedLottoNumbers = newLottoNumbers.intersection(myLottoNumbers)
    
    if matchedLottoNumbers.count > 0 {
        let winLottoNumbers = Array(matchedLottoNumbers)
        let convertIntToString = winLottoNumbers.map { String($0) }
        let printWinNumbers = convertIntToString.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(printWinNumbers)입니다.")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

matchingLottoNumber()
