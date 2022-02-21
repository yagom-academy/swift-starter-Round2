//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoHistory: [String: [Int]] = [:]
let winnerLottoNumbers: [Int] = generateLottoNumbers()

func generateLottoNumbers() -> [Int] {
  var allNumbers: [Int] = []
  allNumbers.append(contentsOf: stride(from: 1, to: 46, by: 1))
  allNumbers.shuffle()
  let lottoNumbers = Array(allNumbers[0...5]).sorted()
  saveLottoNumbers(round: lottoHistory.count, numbers: lottoNumbers)
  return lottoNumbers
}

func saveLottoNumbers(round: Int, numbers: [Int]) {
  let roundString = "\(round + 1)회차"
  lottoHistory[roundString] = numbers
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

func saveLottoNubmersAndPrintSpecificRoundNumbers(saveRound: Int, printRound: Int) {
  let _ = (0..<saveRound).map { _ in generateLottoNumbers() }
  guard let secondLottoNumbers = lottoHistory["\(printRound)회차"] else { return }
  let numbersString = secondLottoNumbers.map { "\($0)" }.joined(separator: ", ")
  print("\(printRound)회차의 로또 당첨 번호는 \(numbersString) 입니다!")
}

saveLottoNubmersAndPrintSpecificRoundNumbers(saveRound: 5, printRound: 2)
