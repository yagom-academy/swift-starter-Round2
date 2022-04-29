//
//  step2_compareLotto.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - 로또 번호 생성
func generateLotto() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    repeat {
        lottoNumbers.insert(Int.random(in: 1...45))
    } while lottoNumbers.count < 6
    return lottoNumbers
}

//MARK: - 일치하는 번호를 판독하여 알림
func checkResult() {
    let lottoNumbers = generateLotto()
    let sameNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    var winNumbers: String = String("\(sameNumbers.sorted())")
        winNumbers.removeLast()
        winNumbers.removeFirst()
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(winNumbers) 입니다!")
    }
}
