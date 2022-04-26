//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// Week2Step2
let randomNumbers = createRandomLottoNumbers()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let intersectionNumbers = checkInterserctionNumbers(lottoNumbers: randomNumbers, myLottoNumbers: myLottoNumbers)
showIntersectionNumbers(intersectionNumbers: intersectionNumbers)

