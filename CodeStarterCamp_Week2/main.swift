//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - STEP2

let myLottoNumbers = [1, 2, 3, 4, 5, 6]
var lottoHistories = [String: [Int]]()

for _ in 0 ..< 5 {
    createLotto()
}

///3 회차 로또 결과를 출력한다.
fetchLottoResult(at: 3)
