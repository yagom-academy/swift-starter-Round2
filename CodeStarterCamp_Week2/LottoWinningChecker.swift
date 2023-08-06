//
//  LottoNumberChecker.swift
//  CodeStarterCamp_Week2
//
//  Created by JIWOONG on 2023/08/01.
//

import Foundation

var lottoNumbersDictionary: [String: [Int]] = [:]

func makeLottoNumbers() -> [Int] {
    var randomNumber: Int
    var lottoNumbers: Set<Int> = []
    var sortedLottoNumbers: [Int] = []
    while lottoNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    sortedLottoNumbers = Array(lottoNumbers).sorted()
    saveLottoNumbers(lottoNumbers: sortedLottoNumbers)
    return sortedLottoNumbers
}

func checkLottoNumbers(compare myLotto: [Int], with winningNumbers: [Int]) {
    let myNumbers: Set<Int> = Set(myLotto)
    let checkedNumbers: Set<Int> = myNumbers.intersection(Set(winningNumbers))
    if checkedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let checkedNumbersToString: String = checkedNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(checkedNumbersToString) 입니다!")
    }
}

func saveLottoNumbers(lottoNumbers: [Int]) {
    let roundNumber = lottoNumbersDictionary.count + 1
    let madeLottoNumbers: [Int] = lottoNumbers
    lottoNumbersDictionary.updateValue(madeLottoNumbers, forKey: "\(roundNumber)회차")
}

func readLottoNumbers(from storedLottoNumbers: [String: [Int]], round: Int) {
    if let selectedLottoNumbers = storedLottoNumbers["\(round)회차"] {
        let lottoNumbersToString: String = selectedLottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbersToString) 입니다.")
    }
}
