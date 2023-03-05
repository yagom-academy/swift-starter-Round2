//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Daehoon Lee on 2023/03/02.
//

import Foundation

func recordLottoInfo(round: Int, which chosenLottoNumbers: Array<Int>, in lottoInfos: inout [String: [Int]]) {
    lottoInfos.updateValue(chosenLottoNumbers, forKey: String(round) + "회차")
}

func chooseLottoNumbers() -> [Int] {
    var pickUpLottoNumbers: Set<Int> = Set<Int>()
    
    while pickUpLottoNumbers.count < 6 {
        pickUpLottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return pickUpLottoNumbers.sorted()
}

func printLottoInfo(round: Int, in lottoInfos: [String: Array<Int>]) {
    if let lottoInfo = lottoInfos[String(round) + "회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoInfo.map{ String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("조회할 수 없는 회차입니다!!!")
    }
}

func checkLottoInfo(round: Int) {
    var lottoInfos: Dictionary<String, Array<Int>> = [:]
    
    for round in 1...5 {
        recordLottoInfo(round: round, which: chooseLottoNumbers(), in: &lottoInfos)
    }
    
    printLottoInfo(round: round, in: lottoInfos)
}
