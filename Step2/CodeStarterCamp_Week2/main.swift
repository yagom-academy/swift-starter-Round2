//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func convertToString(from: Set<Int>) -> String {
    let convertedOne = from.map {String($0)}.joined(separator: ", ")
    
    return convertedOne
}

func getLotto() -> Set<Int> {
    var lotto = Set<Int>()
    
    while lotto.count < 6 {
        lotto.insert(Int.random(in: 1...45))
    }
    
    return lotto
}

func findSameNumbers(one: Set<Int>, other: Set<Int>) -> Set<Int> {
    let sameNumbers = one.intersection(other)
    
    return sameNumbers
}

func printLottoResult(matchNumbers: String) {
    if matchNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(matchNumbers, terminator: "")
        print(" 입니다!")
    }
}

func checkLotto() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let lotto = getLotto()
    
    let matchNumbers = findSameNumbers(one: Set(myLottoNumbers), other: lotto)
    
    let convertedMatchNumbers = convertToString(from: matchNumbers)
    
    printLottoResult(matchNumbers: convertedMatchNumbers)
}

checkLotto()
