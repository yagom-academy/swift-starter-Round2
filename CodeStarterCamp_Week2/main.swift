//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbersSet(lottoDictionary: inout [String: [Int]]) -> Set<Int> {
    var lottoNumbersSet: Set<Int> = Set<Int>()
    repeat {
        lottoNumbersSet.insert(Int.random(in: 1...45))
    } while lottoNumbersSet.count < 6
    var lottoNumbersArray: [Int] = Array(lottoNumbersSet)
    saveLotto(lottoNumbersArray: lottoNumbersArray, lottoDictionary: &lottoDictionary)
    return lottoNumbersSet
}


func saveLotto(lottoNumbersArray: [Int], lottoDictionary: inout [String: [Int]] ) ->Void {
    var keyString: String = "\(lottoDictionary.count+1)회차"
    lottoDictionary[keyString] = lottoNumbersArray
}

var lottoDictionary: [String: [Int]] = [String: [Int]]()

// STEP 3
for _ in 1...5{
    var lottoNumbersSet: Set<Int> = makeLottoNumbersSet(lottoDictionary: &lottoDictionary)
}

var lottoNumbersSecond: [Int]? = lottoDictionary["2회차"]
if let lotto: [Int] = lottoNumbersSecond {
    print("2회차의 로또 당첨 번호는 \(lotto[0]) ", terminator: "")
    for index in 1...5 {
        print("\(lotto[index]) ", terminator: "")
    }
    print("입니다.")
} else {
    print("There is no 2nd Lotto Number")
}
