//
//  main.swift
//  Step3
//
//  Created by jiye Yi on 2022/10/31.
//

import Foundation
// Mark: 로또 당첨 번호 생성하는 함수
func makeLottoNumbers() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}

// Mark: 로또 번호를 저장하는 dictionary 타입의 함수
var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()

func makeLottoByRounds(round: Int) {
    for round in 1...round {
        lottoDictionary["\(round)회차"] = makeLottoNumbers()
    }
}

// Mark: 원하는 회차를 출력하는 함수
func findLottoRound(roundYouWant: String) {
    if lottoDictionary[roundYouWant] != nil {
        print("\(roundYouWant)의 로또 당첨 번호는 ", terminator: "\(makeLottoNumbers().map {String($0)}.joined(separator: ", ")) 입니다.")
    } else {
        print ("원하는 회차가 없습니다.")
    }
}

makeLottoByRounds(round: 5)
findLottoRound(roundYouWant: "2회차")
findLottoRound(roundYouWant: "3회차")
findLottoRound(roundYouWant: "6회차")
