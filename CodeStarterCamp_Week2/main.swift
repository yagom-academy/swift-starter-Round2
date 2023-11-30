//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 유제민 on 11/29/23.
//

import Foundation

func makeLotto() -> Set<Int> {
    var lottoNumber: Set<Int> = []

    repeat{
        let randomNumber = 1 + Int(arc4random_uniform(45))
        lottoNumber.insert(randomNumber)
    }while lottoNumber.count < 6

    return lottoNumber
}

func makeRound() -> [Int: Set<Int>] {
    var lottoResults: [Int: Set<Int>] = [:]

    for i in 1...5 {
        let numbers = makeLotto()
        lottoResults[i] = numbers
    }
    return lottoResults
}

func printLottoNumbers(_ round: Int, _ results: [Int: Set<Int>]) {
    if let numbers = results[round] {
        print("\(round)회차의 로또 당첨 번호는 \(numbers)입니다.")
    }
}

let lottoResults = makeRound()


printLottoNumbers(4,lottoResults)
