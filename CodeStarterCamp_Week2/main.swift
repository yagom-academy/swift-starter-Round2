//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func setLottoDictionary(prevLottoDictionary: Dictionary<String, [Int]>) -> Dictionary<String, [Int]> {
    var nextLottoDictionary = prevLottoDictionary
    
    nextLottoDictionary["\(prevLottoDictionary.count + 1)회차"] = createLottoNumbers().sorted()

    return nextLottoDictionary
}

func printLottoDictionary(lottoDictionary: Dictionary<String, [Int]>, ordinalCount: Int) {
    if let index = lottoDictionary.index(forKey: "\(ordinalCount)회차") {
        print("\(lottoDictionary[index].key)의 로또 당첨 번호는 ", terminator: "")
        for num in lottoDictionary[index].value {
            if num == lottoDictionary[index].value[0] {
                print("\(num)", terminator: "")
            } else {
                print(", \(num)", terminator: "")
            }
        }
        print(" 입니다.")
    } else {
        print("\(ordinalCount)회차 정보가 없습니다.")
    }
}

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while(lottoNumbers.count < 6) {
        lottoNumbers.insert(Int.random(in: 1..<46))
    }
    
    return lottoNumbers
}

var lottoDictionary: Dictionary<String, [Int]> = [String: [Int]]()
lottoDictionary = setLottoDictionary(prevLottoDictionary: lottoDictionary)
lottoDictionary = setLottoDictionary(prevLottoDictionary: lottoDictionary)
lottoDictionary = setLottoDictionary(prevLottoDictionary: lottoDictionary)
lottoDictionary = setLottoDictionary(prevLottoDictionary: lottoDictionary)
lottoDictionary = setLottoDictionary(prevLottoDictionary: lottoDictionary)

for ordinalCount in 0...6 {
    printLottoDictionary(lottoDictionary: lottoDictionary, ordinalCount: ordinalCount)
}
