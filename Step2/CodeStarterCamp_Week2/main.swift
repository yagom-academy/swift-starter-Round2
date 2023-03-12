//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func convertToString(from lottoNumbers: Set<Int>) -> String {
    let joinedMapResult = lottoNumbers.map {String($0)}.joined(separator: ", ")
    
    return joinedMapResult
}

func makeRandomLottoNumbers() -> Set<Int> {
    var randomLottoNumbers = Set<Int>()
    
    while randomLottoNumbers.count < 6 {
        randomLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return randomLottoNumbers
}

func findSameNumbersBetween(myLottoNumbers: Set<Int>, randomLottoNumbers: Set<Int>) -> Set<Int> {
    let sameNumbers = myLottoNumbers.intersection(randomLottoNumbers)
    
    return sameNumbers
}

func printLottoResult(sameNumbers: String) {
    if sameNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(sameNumbers, terminator: "")
        print(" 입니다!")
    }
}

func checkLotto() {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    let randomLottoNumbers = makeRandomLottoNumbers()
    let sameNumbers = findSameNumbersBetween(myLottoNumbers: Set(myLottoNumbers), randomLottoNumbers: randomLottoNumbers)
    let convertedSameNumbers = convertToString(from: sameNumbers)
    
    printLottoResult(sameNumbers: convertedSameNumbers)
}

checkLotto()
