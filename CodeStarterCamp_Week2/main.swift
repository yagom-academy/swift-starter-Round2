//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/**
 Step 2: 내 번호와 맞추어보기!
 */
//let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

//checkMyLottoNumber(myLottoNumbers: myLottoNumbers)


/**
 Step 3: 로또 당첨 번호를 회차별로 저장하고, 확인하자!
 */
for _ in 1...5 {
    makeLotto()
}

printBeforeLottoNumbers(beforeTurn: 2)
printBeforeLottoNumbers(beforeTurn: 2)
printBeforeLottoNumbers(beforeTurn: 0)
