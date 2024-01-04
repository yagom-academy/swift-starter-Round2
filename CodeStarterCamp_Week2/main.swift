//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// STEP 2 - 내 번호와 맞추어보기!
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let result = checkLottoResult(myLottoNumbers)
if result.isEmpty {
  print("아쉽지만 겹치는 번호가 없습니다.")
} else {
  print("축하합니다! 겹치는 번호는 \(result.map { String($0) }.joined(separator: ", ")) 입니다!")
}
