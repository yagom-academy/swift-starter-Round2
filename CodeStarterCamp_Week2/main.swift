//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - STEP2

//var lottoNumbers = getLottoNumber()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]

//compareLottoResult(to: lottoNumbers, from: myLottoNumbers)

// MARK: - STEP 3
var lottoHistories = [String: [Int]]()

/// 로또 당첨 번호를 5번 생성한다.
for _ in 0 ..< 5 {
    let _ = getLottoNumber()
}

///3 회차 로또 결과를 출력한다.
fetchLottoResult(at: 3)
