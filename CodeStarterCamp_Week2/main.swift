//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// STEP - 2
// 당첨번호 생성
//let winningNumbers: Set<Int> = makeLottoNumber()

// 내가 찍은 번호
//let myLottoNumbers: [Int] = [9, 22, 33, 19, 30, 35]

// 로또 번호 비교
//checkLottoNumber(compare: myLottoNumbers, with: winningNumbers)

// STEP - 3
// 5회차 분의 로또 당첨 번호 저장
let fiveTimesLottoNumbers: [String:[Int]] = makeFiveTimesLotto()

// 특정 회차 로또 당첨 번호 조회
readLottoNumbers(when: 1, from: fiveTimesLottoNumbers)
