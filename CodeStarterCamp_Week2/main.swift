//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbersDictionary: Dictionary<String, Set<Int>> = [:]
let myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]
var sameNumArray: Array<Int> = [Int]()

// 원하는 회차의 로또 번호를 확인하기 위한 변수
let roundForLottoNumbers: Int = 2

createSeveralLottoNumbersByCustom(customTimes: 5)
checkSameLottoNumbers(myLottoNumbers: myLottoNumbers, roundForLottoNumbers: roundForLottoNumbers)
printSameLottoNumbers(sameNumArray: sameNumArray)
printSelectedLottoNumbers(roundForLottoNumbers: roundForLottoNumbers)
