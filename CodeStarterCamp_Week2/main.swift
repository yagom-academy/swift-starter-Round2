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
        lottoDictionary["\(round)"] = lottoNumbersArray
    }
    return lottoDictionary
}

// Mark: -원하는 회차를 출력하는 함수
func findLotto(by round: Int) {
    if let lotto = lottoList[String(round)] {
        print("\(round)회차의 로또 당첨 번호는 \((lotto).map { String($0) }.joined(separator: ", ")) 입니다.")
    } else {
        print("원하는 회차가 없습니다.")
    }
}

let lottoList = makeLottoByRounds()
findLotto(by: 2)
findLotto(by: 4)
findLotto(by: 6)
