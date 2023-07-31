//
//  LottoNumberChecker.swift
//  CodeStarterCamp_Week2
//
//  Created by JIWOONG on 2023/08/01.
//

import Foundation

// 당첨번호를 생성하는 함수
func makeLottoNumber() -> Array<Int> {
    var temp: Int
    var lotto: Set<Int> = Set<Int>()
    while lotto.count < 6 {
        temp = Int.random(in: 1...45)
        lotto.insert(temp)
    }
    return Array(lotto)
}

// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func checkLottoNumber(compare myLotto: Array<Int>, with winningNumbers: Array<Int>) {
    var checkedNumbers: Array<Int> = Array<Int>()
    for i in 0...5 {
        if myLotto.contains(winningNumbers[i]) {
            checkedNumbers.append(winningNumbers[i])
        }
    }
    if checkedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let stringTest: String = checkedNumbers.map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(stringTest) 입니다!")
    }
}
