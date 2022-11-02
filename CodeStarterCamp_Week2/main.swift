//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while(lottoNumbers.count < 6) {
        lottoNumbers.insert(Int.random(in: 1..<46))
    }
    
    return lottoNumbers
}

func createSameNumbersArray(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) -> Array<Int> {
    var sameNumbers: [Int] = [Int]()
    
    for num in myLottoNumbers {
        if lottoNumbers.contains(num){
            sameNumbers.append(num)
        }
    }
    
    return sameNumbers
}

func printLottoResult(sameNumbers: [Int]) {
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for num in sameNumbers {
            if num == sameNumbers[0] {
                print("\(num)", terminator: "")
            } else {
                print(", \(num)", terminator: "")
            }
        }
        print(" 입니다!")
    }
}

let lottoNumbers = createLottoNumbers()
let myLottoNumbers = [1,11,19,21,27,39]
var sameNumbers = createSameNumbersArray(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)
sameNumbers = sameNumbers.sorted()

printLottoResult(sameNumbers: sameNumbers)
