//
//  week2_step2.swift
//  CodeStarterCamp_Week2
//
//  Created by jjudy on 2023/09/04.
//

import Foundation

func createLottoNumbers(currentRound: Int) {
    var lottoSet = Set<Int>()
    
    while lottoSet.count < 6 {
        lottoSet.insert(Int.random(in: 1...45 ))
    }
    
    saveLottoNumbers(currentRound: currentRound, lottoSet: lottoSet)
}

func checkSameLottoNumbers(myLottoNumbers: [Int], roundForLottoNumbers: Int) {
    if let selectedLottoNumbers = lottoNumbersDictionary["\(roundForLottoNumbers)회차"] {
        for num in myLottoNumbers {
            if (selectedLottoNumbers.contains(num)) {
                sameNumArray.append(num)
            }
        }
    }
}

func printSameLottoNumbers(sameNumArray: [Int]) {
    if(!sameNumArray.isEmpty) {
        let result = sameNumArray.map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(result) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}


