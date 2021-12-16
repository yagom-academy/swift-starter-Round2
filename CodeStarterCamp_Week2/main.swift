//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//



import Foundation

var lottoNumber: Int!
var lottoNumbers: Set<Int> = []
var myLottoNumbers: Set<Int> = []
var intersectionLottoNumber: Set<Int> = []


func makeLottoNumber() -> Set<Int> {
  while lottoNumbers.count < 6 {
    lottoNumber = Int.random(in: 1...45)
    if !lottoNumbers.contains(lottoNumber) {
      lottoNumbers.insert(lottoNumber)
    }
  }
  return lottoNumbers
}


func intersectLooto() -> Set<Int> {
  intersectionLottoNumber = myLottoNumbers.intersection(makeLottoNumber())
  return  intersectionLottoNumber
}


func checkLotto() {
  if intersectLooto().count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(intersectLooto()) 입니다!")
  }
}

myLottoNumbers = [1, 2, 3, 4, 5, 6]

checkLotto()
