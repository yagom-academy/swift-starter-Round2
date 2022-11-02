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

func makeLottoByRounds() -> Dictionary<String, [Int]> {
    var lottoDictionary: Dictionary<String, [Int]> = [String: [Int]]()
    for round in 1...5 {
        let makeLottoNumbersArray = Array(makeLottoNumbers())
        let round = "\(round)회차"
        lottoDictionary[round] = makeLottoNumbersArray
    }
    return lottoDictionary
}


// Mark: 원하는 회차를 출력하는 함수
let lottoDictionary = makeLottoByRounds()
func findLottoRound(roundYouWant: String) {
    print(lottoDictionary)
    if let lottoList = lottoDictionary[roundYouWant] {
        print("\(roundYouWant)의 로또 당첨 번호는 \((lottoList).map{ String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print ("원하는 회차가 없습니다.")
    }
}

findLottoRound(roundYouWant: "2회차")
findLottoRound(roundYouWant: "3회차")
findLottoRound(roundYouWant: "6회차")



