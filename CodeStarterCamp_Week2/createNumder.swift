//
//  createNumder.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/09/09.
//
import Foundation

func createLottoNumder() -> Set<Int> {
    var generateLotto : Set<Int> = []

    while generateLotto.count < 6{
        let number = Int.random(in: 1...45)
        generateLotto.insert(number)
    }
    return generateLotto
}

func generateLottoNumbersForRounds(_ round: Int) -> [Int: [Int]] {
    var lottoResults: [Int: [Int]] = [:]
    
    for round in 1...round {
        let LottoNumber = createLottoNumder()
        lottoResults[round] = Array(LottoNumber)
        print("\(round)회차의 로또 당첨 번호는 \(LottoNumber) 입니다.")
    }
    return lottoResults
}

func displayLottoResultForRound(desiredRound: Int) {
    if let desiredLotto = lottoResults[desiredRound] {
        print("\(desiredRound)회차의 로또 당첨 번호는 \(desiredLotto.sorted()) 입니다.")
    } else {
        print("\(desiredRound)회차의 로또 당첨 번호를 찾을 수 없습니다.")
    }
}
