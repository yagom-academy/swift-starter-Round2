//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var pickedNumbers: Set<Int> = Set<Int>()
    while pickedNumbers.count < 6 {
        let randomNumber: Int = Int.random(in: 1...45)
        pickedNumbers.insert(randomNumber)
    }
    saveLottoNumbersWithCount(pickedNumbers)
    return pickedNumbers
}

func checkLottoNumbers(mine myLottoNumbersArray: Array<Int>,
                       winners newLottoNumbersSet: Set<Int>) {
    let myLottoNumbersSet: Set<Int> = Set<Int>(myLottoNumbersArray)
    let matchedLottoNumbers: String = newLottoNumbersSet.intersection(myLottoNumbersSet)
        .map({(value: Int) -> String in return String(value)})
        .joined(separator: ", ")

    if matchedLottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchedLottoNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var lottoNumbersPerCount: [String: Array<Int>] = [:]
var lottoCount: Int = 1

func saveLottoNumbersWithCount(_ lottoNumbers: Set<Int>) {
    let dictionaryKey: String = "\(lottoCount)회차"
    lottoNumbersPerCount[dictionaryKey] = Array<Int>(lottoNumbers)
    lottoCount += 1
}

func getPastLottoNumbers(of lottoCount: Int) {
    let dictionaryKey: String = "\(lottoCount)회차"
    let lottoNumbersOptional = lottoNumbersPerCount[dictionaryKey]
    if let lottoNumbersSet = lottoNumbersOptional {
        let lottoNumbers: String = lottoNumbersSet.map {String($0)}.joined(separator: ", ")
        print("\(dictionaryKey)의 로또 당첨 번호는 \(lottoNumbers) 입니다.")
    } else {
        print("찾으시는 회차의 로또 당첨 번호가 없습니다")
    }
}

var newLottoNumbers: Set<Int>
for _ in (1...5) {
    newLottoNumbers = generateLottoNumbers()
}

getPastLottoNumbers(of: 5)

