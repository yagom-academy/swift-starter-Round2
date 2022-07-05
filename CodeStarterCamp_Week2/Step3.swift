//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by junho lee on 2022/07/02.
//

import Foundation

typealias LottoNumbers = [String: Set<Int>]

func makeLottoNumbers(count: Int) -> LottoNumbers {
    var lottoNumbersToMake: LottoNumbers = [:]
    for _ in 1...count {
        lottoNumbersToMake = addLottoNumber(lottoNumber: makeLottoNumbers(),
                                            to: lottoNumbersToMake)
    }
    return lottoNumbersToMake
}

func addLottoNumber(lottoNumber: Set<Int>,
                    to lottoNumbers: LottoNumbers) -> LottoNumbers {
    var lottoNumbersToAdd: LottoNumbers = lottoNumbers
    lottoNumbersToAdd["\(lottoNumbers.count + 1)회차"] = lottoNumber
    return lottoNumbersToAdd
}

func printRoundLottoNumber(roundNumber: Int,
                           lottoNumbers: LottoNumbers) {
    if let lottoNumber = lottoNumbers["\(roundNumber)회차"] {
        print("\(roundNumber)회차의 로또 당첨 번호는",
              "\(lottoNumber.map { "\($0)" }.joined(separator: ", "))",
              "입니다.")
    } else {
        print("저장된 로또 당첨 번호가 없습니다.")
    }
}
