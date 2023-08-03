//
//  LottoNumberChecker.swift
//  CodeStarterCamp_Week2
//
//  Created by JIWOONG on 2023/08/01.
//

import Foundation

// STEP - 2
// 당첨번호를 생성하는 함수
func makeLottoNumber() -> Set<Int> {
    var randomNumber: Int
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    return lottoNumbers
}

// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func checkLottoNumber(compare myLotto: [Int], with winningNumbers: Set<Int>) {
    let myNumbers: Set<Int> = Set(myLotto)
    let checkedNumbers: Set<Int> = myNumbers.intersection(winningNumbers)
    if checkedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let checkedNumbersToString: String = checkedNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(checkedNumbersToString) 입니다!")
    }
}

// STEP - 3
// 로또 회차를 5번 생성한 후, 회차별로 Dictionry에 저장
func makeFiveTimesLotto() -> [String: [Int]] {
    var fiveTimesLottoNumbers: [String: [Int]] = [:]
    let LottoNumberStore: [Int] = Array(makeLottoNumber())
    
    for round in 1...5 {
        fiveTimesLottoNumbers.updateValue(LottoNumberStore, forKey: "\(round)회차")
    }
    return fiveTimesLottoNumbers
}

// 특정 회차 로또 당첨 번호 확인
func readLottoNumbers(when round: Int, from wholeTimesLottoNumbers: [String: [Int]]) {
    if let selectedLottoNumbers = wholeTimesLottoNumbers["\(round)회차"] {
        let lottoNumbersToString: String = selectedLottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbersToString) 입니다.")
    }
}
