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


func duplicateNumber() -> String {
  let duplicateNumber: String = makeLottoNumber().map { String($0) }.joined(separator: ", ")
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


func saveLotto(lastRound: Int) -> Dictionary<Int, String> {
  var lottoDictionary: [Int: String] = [:]
    for round in 1...lastRound{
       lottoDictionary[round] = duplicateNumber()
     }
    return lottoDictionary
  }


func findRoundLotto(inputRastRound: Int, round: Int) {
  let Dictionary = saveLotto(lastRound: inputRastRound)
  if let actualDictionary = Dictionary[round] {
    print("\(round)회차의 로또 당첨 번호는 \(actualDictionary) 입니다.")
  } else {
      print("1~6사이의 회차만 존재합니다.")
  }
}


findRoundLotto(inputRastRound: 50, round: 50)
