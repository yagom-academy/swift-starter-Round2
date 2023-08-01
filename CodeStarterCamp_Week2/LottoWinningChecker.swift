//
//  LottoNumberChecker.swift
//  CodeStarterCamp_Week2
//
//  Created by JIWOONG on 2023/08/01.
//

import Foundation

// 당첨번호를 생성하는 함수
func makeLottoNumber() -> [Int] {
    var tempNumber: Int
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        tempNumber = Int.random(in: 1...45)
        lottoNumbers.insert(tempNumber)
    }
    return Array(lottoNumbers)
}

// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func checkLottoNumber(compare myLotto: Array<Int>, with winningNumbers: Array<Int>) {
    var checkedNumbers: Array<Int> = []
    for i in 0...5 {
        if myLotto.contains(winningNumbers[i]) {
            checkedNumbers.append(winningNumbers[i])
        }
    }
    if checkedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let checkedNumbersToString: String = checkedNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(checkedNumbersToString) 입니다!")
    }
}
