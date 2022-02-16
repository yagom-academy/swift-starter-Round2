//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let winnerLottoNumbers: [Int] = generateLottoNumbers()

func generateLottoNumbers() -> [Int] {
  var lottoNumbers: Set<Int> = Set<Int>()
  while lottoNumbers.count < 6 {
    let randomNumber = Int.random(in: 1...45)
    lottoNumbers.insert(randomNumber)
  }
  return Array(lottoNumbers)
}

func checkLottoNumbers(mine: [Int], winner: [Int]) {
  let sameNumbers: Set<Int> = Set(mine).intersection(Set(winner))
  if sameNumbers.count > 0 {
    let numbersString = sameNumbers.map { "\($0)" }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(numbersString) 입니다!")
  } else {
    print("아쉽지만 겹치는 번호가 없습니다.")
  }
}

checkLottoNumbers(mine: myLottoNumbers, winner: winnerLottoNumbers)
