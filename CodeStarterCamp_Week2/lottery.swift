//
//  lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by 김진우 on 2022/05/02.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [4, 6, 8, 24, 27, 34]

func makeLottoNumbers(number: Int) -> Set<Int> {
    while lottoNumbers.count < number {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func comparison(number: Int) -> Set<Int> {
    lottoNumbers = makeLottoNumbers(number: number)
    let matchingNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    
    return matchingNumbers
}

func printNumbers(number: Int) {
    let lottoNumbers = makeLottoNumbers(number: number)
    let matchingNumbers = comparison(number: number)
    
    if matchingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers) 입니다!")
    }
}

