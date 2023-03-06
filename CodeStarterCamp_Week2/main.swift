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

func createRoundLottoNumbers(createNumbers: Int) {
    for roundNumber in 1...createNumbers {
        saveRoundLottoNumbers(saveRoundNumber: roundNumber, roundLottoNumbers: createLottoNumbers())
    }
}

func saveRoundLottoNumbers(saveRoundNumber: Int, roundLottoNumbers: Array<Int>) {
    lottoWinNumbersDictionary.updateValue(roundLottoNumbers, forKey: "\(saveRoundNumber)회차")
    print("\(saveRoundNumber)회차 : \(roundLottoNumbers.map{String($0)}.joined(separator: ", "))")
}


func searchRoundLottoNumbers(roundNumber: Int) {
    if let lottoNumbers = lottoWinNumbersDictionary["\(roundNumber)회차"] {
        print("\(roundNumber)회차의 로또 당첨번호는 \(lottoNumbers.map{String($0)}.joined(separator: ", "))입니다.")
    } else {
        print("조회할 수 없는 회차입니다!")
    }
}

createRoundLottoNumbers(createNumbers: 5)
searchRoundLottoNumbers(roundNumber: 3)



