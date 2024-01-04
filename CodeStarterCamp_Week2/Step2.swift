//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 고혜지 on 1/3/24.
//

import Foundation

private func generateLottoNumbers() -> Set<Int> {
  var winningNumbers: Set<Int> = Set<Int>()

  repeat {
    winningNumbers.insert(Int.random(in: 1...45))
  } while winningNumbers.count != 6
  
  return winningNumbers
}

func checkLottoResult(_ input: [Int]) -> Set<Int> {
  let winningNumbers = generateLottoNumbers()
  let matchingNumbers = Set<Int>(input).intersection(winningNumbers)
  
  return matchingNumbers
}
