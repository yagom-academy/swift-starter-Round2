//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by junho lee on 2022/07/02.
//

import Foundation

typealias LottoNumbersDict = [String: Set<Int>]

func makeLottoNumbersDictionaries(count: Int) -> LottoNumbersDict {
    var lottoNumbersDictToMake: LottoNumbersDict = [:]
    for _ in 1...count {
        lottoNumbersDictToMake =
        addLottoNumbersToDict(lottoNumbers: makeLottoNumbers(),
                              lottoNumbersDict: lottoNumbersDictToMake)
    }
    return lottoNumbersDictToMake
}

func addLottoNumbersToDict(lottoNumbers: Set<Int>,
                           lottoNumbersDict: LottoNumbersDict) -> LottoNumbersDict {
    var lottoNumbersDictToAdd: LottoNumbersDict = lottoNumbersDict
    lottoNumbersDictToAdd["\(lottoNumbersDict.count + 1)회차"] = lottoNumbers
    return lottoNumbersDictToAdd
}

func printLottoNumbersInDict(episodeNumber: Int,
                             lottoNumbersDict: LottoNumbersDict) {
    if let lottoNumbers = lottoNumbersDict["\(episodeNumber)회차"] {
        print("\(episodeNumber)회차의 로또 당첨 번호는",
              "\(lottoNumbers.map { "\($0)" }.joined(separator: ", "))",
              "입니다.")
    } else {
        print("저장된 로또 당첨 번호가 없습니다.")
    }
}
