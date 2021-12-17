//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Jungmo Yu on 2021/12/17.
//

import Foundation


func addLottoNumbersNtimes(numOfRound: Int) {
    while savedLottoNumbers.count < numOfRound {
        savedLottoNumbers["\(savedLottoNumbers.count + 1)회차"] = extractLottoNumbers()
    }
}


func printNthLottoNumbers(round: Int) {
    if let nthLottoNumbers = savedLottoNumbers["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 " + removeBracketFromArray(someArray: nthLottoNumbers) + " 입니다.")
    }
}
