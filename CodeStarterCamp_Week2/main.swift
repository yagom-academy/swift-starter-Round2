//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 예강이다 on 2022/11/11.
//

import Foundation

// Mark: - 로또 번호 생성
func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert((Int.random(in: 1...45)))
    }
    return lottoNumbers
}

// Makr: - 회차 번호 생성
func makeLottoByRounds() -> Dictionary<String, [Int]> {
    var lottoDictionary: Dictionary<String, [Int]> = [String: [Int]]()
    
    for round in 1...5 {
        let lottoNumbersArray = Array(makeLottoNumbers())
        let round = "\(round)회차"
        lottoDictionary[round] = lottoNumbersArray
    }
    return lottoDictionary
}

// Mark: -원하는 회차를 출력하는 함수
