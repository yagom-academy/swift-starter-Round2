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


func duplicateNumber() -> String {
  let toStringIntersectionLotto: String = makeOverlapedNumbers().map { String($0) }.joined(separator: ", ")
  return toStringIntersectionLotto
}


func duplicateNumberNotOverlapedNumber() -> String {
  let toStringIntersectionLotto: String = makeLottoNumber().map { String($0) }.joined(separator: ", ")
  return toStringIntersectionLotto
}


func checkLotto() -> String  {
  let toStringIntersectionLotto = duplicateNumber()
  if toStringIntersectionLotto.isEmpty {
      print("아쉽지만 겹치는 번호가 없습니다.")
  } else {
      print("축하합니다! 겹치는 번호는 \(toStringIntersectionLotto) 입니다!")
  }
  return toStringIntersectionLotto
}


func saveDictionary() -> Dictionary<String, String> {
  var lottoDictionary: [String: String] = [:]
  for round in 1...5{
    lottoDictionary["\(round)회차"] = duplicateNumberNotOverlapedNumber()
  }
  return lottoDictionary
}


func findRoundLotto(round: Int) {
  let Dictionary = saveDictionary()
  if let actualDictionary = Dictionary["\(round)회차"] {
    print("\(round)회차의 로또 당첨 번호는 \(actualDictionary) 입니다.")
  } else {
      print("1~6사이의 회차만 존재합니다.")
  }
}


findRoundLotto(round: 4)
