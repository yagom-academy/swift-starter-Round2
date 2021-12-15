//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let realLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let myLottoNumbers: [Int] = extractLottoNumbers()

let comparedResult = compareLottoNumbers(realLottoNumbers: Set(realLottoNumbers),
                                                myLottoNumbers: Set(myLottoNumbers))

printMessage(numbers: comparedResult)
