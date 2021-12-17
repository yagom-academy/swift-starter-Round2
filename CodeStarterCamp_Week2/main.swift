//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation


func makeLottoNumber() -> Array<Int> {
  var lottoNumbers: Array<Int> = []
  while lottoNumbers.count < 6 {
    let lottoNumber: Int = Int.random(in: 1...45)
      if !lottoNumbers.contains(lottoNumber) {
        lottoNumbers.append(lottoNumber)
    }
  }
    return lottoNumbers
}


func overlapedNumber() -> Array<Int> {
  var intersectionLottoNumber : Array<Int> = []
    for member in 1...45 {
      if myLottoNumbers.contains(member){
        if makeLottoNumber().contains(member){
              intersectionLottoNumber.append(member)
      }
    }
  }
  return intersectionLottoNumber
}


func checkLotto() {
  if overlapedNumber().isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
  } else {
    print("축하합니다! 겹치는 번호는 \(convertSetToString()) 입니다!")
  }
}


func convertSetToString() -> String {
  let toStringIntersectionLotto: String = overlapedNumber().map { String($0) }.joined(separator: ", ")
  return toStringIntersectionLotto
}


var myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]

checkLotto()


