//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Jungmo Yu on 2021/12/17.
//

import Foundation


func addLottoNumbersNtimes(historyDictionary: [String: [Int]], numOfLottoNumbers: Int) -> [String: [Int]] {
    var lottoNumbersDictionary = historyDictionary
    
    while lottoNumbersDictionary.count < numOfLottoNumbers {
        lottoNumbersDictionary["\(lottoNumbersDictionary.count + 1)회차"] = extractLottoNumbers()
    }
    return lottoNumbersDictionary
}


func printNthLottoNumbers(lottoNumbersDict: [String : [Int]], num: Int) {
    if let nthLottoNumbers = lottoNumbersDict["\(num)회차"] {
        print("\(num)회차의 로또 당첨 번호는 " + removeBracketFromArray(someArray: nthLottoNumbers) + " 입니다.")
    }
}
