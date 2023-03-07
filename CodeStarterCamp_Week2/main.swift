//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoWinNumbersDictionary: Dictionary<String, Array<Int>> = [:]


func createLottoNumbers() -> [Int] {
    var lottoNumber: Set<Int> = []
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in:1...45))
    }
    return lottoNumber.sorted()
}

func createRoundLottoNumbers(roundCount: Int) {
    for round in 1...roundCount {
        saveRoundLottoNumbers(storageRound: round, roundWinLottoSet: createLottoNumbers())
    }
}

func saveRoundLottoNumbers(storageRound: Int, roundWinLottoSet: Array<Int>) {
    lottoWinNumbersDictionary.updateValue(roundWinLottoSet, forKey: "\(storageRound)회차")
}

func searchRoundLottoNumbers(searchRound: Int) {
    if let lottoNumbers = lottoWinNumbersDictionary["\(searchRound)회차"] {
        print("\(searchRound)회차의 로또 당첨번호는 \(lottoNumbers.map{String($0)}.joined(separator: ", "))입니다.")
    } else {
        print("조회할 수 없는 회차입니다!")
    }
}

createRoundLottoNumbers(roundCount: 5)
searchRoundLottoNumbers(searchRound: 3)



