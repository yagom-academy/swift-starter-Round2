//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//Step3
func getNumbers() -> Set<Int> {
    var number: Int
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
    return lottoNumbers
}

func saveLottoRecord() -> Dictionary<String, Array<Int>> {
    var lottoRecord: Dictionary<String, Array<Int>> = Dictionary<String, Array<Int>>()

    for lottoTimes in 1...5 {
        lottoRecord["\(lottoTimes)회차"] = Array(getNumbers())
    }

    return lottoRecord
}

let lottoNumberRecord: Dictionary<String?, Array<Int>> = saveLottoRecord()

func printLottoNumbers(for lottoTime: String) {

    if let lottoNumbers = lottoNumberRecord["\(lottoTime)"] {
        let string = lottoNumbers.map{ String($0) }.joined(separator: ", ")
        print("\(lottoTime)의 로또 당첨 번호는 \(string) 입니다.")
    }
}

for time in 1...5 {
    printLottoNumbers(for: "\(time)회차")
}
