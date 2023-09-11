//
//  week2_step3.swift
//  CodeStarterCamp_Week2
//
//  Created by jjudy on 2023/09/08.
//

import Foundation

func createSeveralLottoNumbersByCustom(customTimes: Int) {
    var currentRound: Int = 0
    
    for _ in 1...customTimes {
        currentRound += 1
        createLottoNumbers(currentRound: currentRound)
    }
}

func saveLottoNumbers(currentRound: Int, lottoSet: Set<Int>) {
    let roundStr = "\(currentRound)회차"
    lottoNumbersDictionary[roundStr] = lottoSet
}

func printSelectedLottoNumbers(roundForLottoNumbers: Int) {
    if let selectedLottoNumbers = lottoNumbersDictionary["\(roundForLottoNumbers)회차"] {
        let lottoNumberStr = selectedLottoNumbers.map{String($0)}.joined(separator: ", ")
        print("\(roundForLottoNumbers)회차 :", lottoNumberStr)
    } else {
        print("죄송합니다. 검색하신 \(roundForLottoNumbers)회차에 대한 정보가 없습니다.")
    }
}
