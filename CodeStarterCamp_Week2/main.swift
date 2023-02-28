//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/* Step 2: 내 번호와 맞추어보기 */
let winningLottoNumbers = getWinningLottoNumbers()
let myLottoNumbers: [Int] = [ 7, 20, 23, 31, 36, 45 ]
compareLottoNumbers(winningNumbers: winningLottoNumbers, myNumbers: myLottoNumbers)
