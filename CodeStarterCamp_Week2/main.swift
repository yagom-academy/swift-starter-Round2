//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


//MARK: - Step2

//let realLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//let myLottoNumbers: [Int] = extractLottoNumbers()
//let comparedResult = compareLottoNumbers(realLottoNumbers: Set(realLottoNumbers),
//                                         myLottoNumbers: Set(myLottoNumbers))

//printLottoResult(result: comparedResult)

//MARK: - Step3

var savedLottoNumbers = [String: [Int]]()

savedLottoNumbers = addLottoNumbersNtimes(historyDictionary: savedLottoNumbers, numOfLottoNumbers: 5)
print(savedLottoNumbers)
printNthLottoNumbers(lottoNumbersDict: savedLottoNumbers, round: 2)
