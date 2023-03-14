//
//  main.swift
//  step3
//
//  Created by 이진 on 2023/03/13.
//

import Foundation

func convertToString(from lottoNumbers: Array<Int>) -> String {

    return lottoNumbers.map {String($0)}.joined(separator: ", ")
}

func makeRandomLottoNumbers() -> Array<Int> {
    var randomLottoNumbers = Set<Int>()
    
    while randomLottoNumbers.count < 6 {
        randomLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return Array(randomLottoNumbers).sorted()
}

func recordLottoNumbers(totalRound: Int) -> Dictionary<String, Array<Int>> {
    var lottoNumbersRecord = Dictionary<String, Array<Int>>()
    
    for round in 1...totalRound {
        lottoNumbersRecord["\(round)회차"] = makeRandomLottoNumbers()
    }
    
    return lottoNumbersRecord
}

func checkLottoNumber(round: Int) {
    let lottoNumbersRecord = recordLottoNumbers(totalRound: 5)
    
    if let lottoNumbers = lottoNumbersRecord["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(convertToString(from: lottoNumbers)) 입니다.")
    }
}

checkLottoNumber(round: 4)
