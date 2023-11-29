//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 유제민 on 11/29/23.
//

import Foundation

func makeLotto() -> Set<Int> {
    var lottoNumber: Set<Int> = []

    while lottoNumber.count < 6 {
        let randomNumber = 1 + Int(arc4random_uniform(45))
        lottoNumber.insert(randomNumber)
    }

    return lottoNumber
}

func makeRound() -> [Int: Set<Int>] {
    var lottoResults: [Int: Set<Int>] = [:] //"1회차": [1, 2, 3, 4, 5, 6] 와 같은 Key와 Value를 가집니다.

    for i in 1...5 {
        let numbers = makeLotto()
        lottoResults[i] = numbers
    }//새로운 로또 번로를 생성하면 for문 i의 값으로 금번회차를 만들어냅니다. 1회차부터 5회차까지

    return lottoResults//회차가 key고 로또번호가 value인 딕셔너리를 리턴합니다.
}

func printLottoNumbers(_ round: Int, _ results: [Int: Set<Int>]) { //makeRound함수에서 만들어낸 딕셔너리를 받아 출력합니다.
    if let numbers = results[round] {
        print("\(round)회차의 로또 당첨 번호는 \(numbers)입니다.")
    }
}

let lottoResults = makeRound()

// 4회차의 로또 당첨 번호 출력
printLottoNumbers(4,lottoResults)//Dictionary 에서 원하는 회차의 로또 당첨 번호를 찾습니다.
