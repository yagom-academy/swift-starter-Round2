//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation


func makeLottoNumber() -> Set<Int> {
  var lottoNumbers: Set<Int> = []
  while lottoNumbers.count < 6 {
    let lottoNumber: Int = Int.random(in: 1...45)
    lottoNumbers.insert(lottoNumber)
  }
  return lottoNumbers
}


func overlapedNumbers() -> Set<Int> {
  let intersectionLottoNumbers = myLottoNumbers.intersection(makeLottoNumber())
  return intersectionLottoNumbers
}


func convertSetToString() -> String {
  let toStringIntersectionLotto: String = overlapedNumbers().map { String($0) }.joined(separator: ", ")
  return toStringIntersectionLotto

}


func checkLotto() {
  let toStringIntersectionLotto = convertSetToString()
    print(toStringIntersectionLotto)
  if toStringIntersectionLotto.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
  } else {
      print("축하합니다! 겹치는 번호는 \(toStringIntersectionLotto) 입니다!")
  }
}


var myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

checkLotto()
checkLotto()
checkLotto()
checkLotto()
checkLotto()
checkLotto()
checkLotto()
checkLotto()
checkLotto()
checkLotto()





