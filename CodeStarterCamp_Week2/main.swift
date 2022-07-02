//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
// printDuplicateNumbers(findDuplicateNumbersInTwoLottoNumbers(
//     myLottoNumbers, makeLottoNumbers()))
 
var makedLottoNumbers: lottoNumbersDict = [:]

for _ in 1...5 {
    addLottoNumbersToDictionary(lottoNumbers: makeLottoNumbers(),
                                lottoNumbersDict: &makedLottoNumbers)
}

printLottoNumbersInDictionary(episodeNumber: 2,
                              lottoNumbersDict: makedLottoNumbers)
printLottoNumbersInDictionary(episodeNumber: 6,
                              lottoNumbersDict: makedLottoNumbers)
