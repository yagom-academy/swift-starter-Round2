//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> [Int] {
  var lottoNumbers: Set<Int> = Set<Int>()
  while lottoNumbers.count < 6 {
    let randomNumber = Int.random(in: 1...45)
    lottoNumbers.insert(randomNumber)
  }
  
  return Array(lottoNumbers)
}
