//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//// STEP 2 - 내 번호와 맞추어보기!
//let myLottoNumbers: Set<Int> = .init(arrayLiteral: 1, 2, 3, 4, 5, 6)
//let result = checkLottoResult(with: myLottoNumbers)
//if result.isEmpty {
//  print("아쉽지만 겹치는 번호가 없습니다.")
//} else {
//  let bracketRemovedResult: String = result.map { String($0) }.joined(separator: ", ")
//  print("축하합니다! 겹치는 번호는 \(bracketRemovedResult) 입니다!")
//}

// STEP 3 - 로또 당첨 번호를 회차별로 저장하고, 확인하자!
let divider = {
  print("\n==============================\n")
}

var lottoManager = LottoManager()

for _ in 1...5 {
  lottoManager.generateLottoNumbers()
}
lottoManager.printAllWinningRecords()
divider()

do {
  try lottoManager.printWinningRecordByRound(3)
} catch let error as LottoError {
  print("Error: \(error.localizedDescription)")
}
divider()


let myLottoNumbers: Set<Int> = .init(arrayLiteral: 1, 2, 3, 4, 5, 6)
do {
  try lottoManager.printLottoResult(with: myLottoNumbers, at: 5)
} catch let error as LottoError {
  print("Error: \(error.localizedDescription)")
}
divider()
