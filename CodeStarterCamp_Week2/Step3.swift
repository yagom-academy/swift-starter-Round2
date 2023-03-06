//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Daehoon Lee on 2023/03/02.
//

import Foundation

var lottoInformation: Dictionary<String, Array<Int>> = [:]

func recordLottoNumbersPerRound(per round: Int, with chosenLottoNumbers: Array<Int>) {
    lottoInformation.updateValue(chosenLottoNumbers, forKey: "\(round)회차")
}

func chooseLottoNumbers() -> [Int] {
    var selectedLottoNumbers: Set<Int> = []
    
    while selectedLottoNumbers.count < 6 {
        selectedLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return selectedLottoNumbers.sorted()
}

func printLottoInformationPerRound(per round: Int) {
    if let lottoNumbers = lottoInformation["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers.map { String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("조회할 수 없는 회차입니다!!!")
    }
}

func checkLottoInfo(round: Int) {
    for round in 1...5 {
        recordLottoNumbersPerRound(per: round, with: chooseLottoNumbers())
    }
    
    printLottoInformationPerRound(per: round)
}
