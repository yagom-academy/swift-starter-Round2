//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.

import Foundation


func makeLottoNumber() -> Set<Int> {
  var lottoNumbers: Set<Int> = []
  while lottoNumbers.count < 6 {
    let lottoNumber: Int = Int.random(in: 1...45)
    lottoNumbers.insert(lottoNumber)
  }
  return lottoNumbers
}


func makeOverlapedNumbers() -> Set<Int> {
  let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
  let overlapedLottoNumbers = myLottoNumbers.intersection(makeLottoNumber())
  return overlapedLottoNumbers
}


func duplicateOverlapedNumber() -> String {
  let duplicateNumber: String = makeOverlapedNumbers().map { String($0) }.joined(separator: ", ")
  return duplicateNumber
}


func checkLotto() -> String  {
  let duplicateNumber = duplicateOverlapedNumber()
  if duplicateNumber.isEmpty {
      print("아쉽지만 겹치는 번호가 없습니다.")
  } else {
      print("축하합니다! 겹치는 번호는 \(duplicateNumber) 입니다!")
  }
  return duplicateNumber
}


func saveLottoRound(lastRound: Int) -> Dictionary<Int, Set<Int>> {
  var lottoHistory: [Int: Set<Int>] = [:]
    for round in 1...lastRound{
       lottoHistory[round] = makeLottoNumber()
     }
    return lottoHistory
  }


func findLottoRound(lastRound: Int, searchRound: Int) {
  let lottoHistory = saveLottoRound(lastRound: lastRound)
  if let actualLottoHistory = lottoHistory[searchRound] {
    print("\(searchRound)회차의 로또 당첨 번호는 \(actualLottoHistory) 입니다.")
  } else {
      print("\(lastRound)는 존재하지 않습니다.")
  }
}


findLottoRound(lastRound: 5, searchRound: 2)
