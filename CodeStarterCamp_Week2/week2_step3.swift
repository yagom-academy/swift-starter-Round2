//
//  week2_step3.swift
//  CodeStarterCamp_Week2
//
//  Created by jjudy on 2023/09/08.
//

import Foundation

func saveLottoNumbers(nowRound: Int, lottoSet: Set<Int>) {
    let roundStr = "\(nowRound)회차"
    lottoNumbersDictionary[roundStr] = lottoSet
}

func printSelectedLottoNumbers(roundForLottoNumbers: Int) {
    if let selectedLottoNumbers = lottoNumbersDictionary["\(roundForLottoNumbers)회차"] {
        let lottoNumberStr = selectedLottoNumbers.map{String($0)}.joined(separator: ", ")
        print("\(roundForLottoNumbers)회차 :", lottoNumberStr)
    }
}
