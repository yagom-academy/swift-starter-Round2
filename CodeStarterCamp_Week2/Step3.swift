//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by junho lee on 2022/07/02.
//

import Foundation

typealias lottoNumbersDict = [String: Set<Int>]

func addLottoNumbersToDictionary(lottoNumbers: Set<Int>,
                                 lottoNumbersDict: inout lottoNumbersDict) {
    lottoNumbersDict["\(lottoNumbersDict.count + 1)회차"] = lottoNumbers
}

func printLottoNumbersInDictionary(episodeNumber: Int,
                                   lottoNumbersDict: lottoNumbersDict) {
    if let lottoNumbers = lottoNumbersDict["\(episodeNumber)회차"] {
        print("\(episodeNumber)회차의 로또 당첨 번호는",
              "\(lottoNumbers.map { "\($0)" }.joined(separator: ", "))",
              "입니다.")
    } else {
        print("저장된 로또 당첨 번호가 없습니다.")
    }
}
