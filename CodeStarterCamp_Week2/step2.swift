//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by suyeon park on 2023/03/03.
//

import Foundation

func checkMyLottoNumber(myLottoNumbers: [Int]) {
    
    let sameNumbers = getSameLottoNumber(myLottoNumbers: myLottoNumbers, realLottoNumber: makeLotto()).sorted()
    
    if sameNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")

        for index in 0...(sameNumbers.count-1) {
            if index == 0 {
                print("\(sameNumbers[index])", terminator: "")
            } else {
                print(", \(sameNumbers[index])", terminator: "")
            }
        }
        print(" 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

private func getSameLottoNumber(myLottoNumbers: [Int], realLottoNumber: Set<Int>) -> Set<Int> {
    return Set<Int>(myLottoNumbers).intersection(realLottoNumber)
}

func makeLotto() -> Set<Int> {
    var lottoSet: Set<Int> = Set<Int>()
    
    let suffledNumbers = stride(from: 1, through: 45, by: 1).shuffled()
    for index in 0...5 {
        lottoSet.insert(suffledNumbers[index])
    }
    
    //print("lottoSet = \(lottoSet)")
    
    return lottoSet
}
