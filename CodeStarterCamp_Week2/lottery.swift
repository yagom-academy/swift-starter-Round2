//
//  lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by 김진우 on 2022/05/02.
//

import Foundation

func makeLottoNumbers(number: Int) -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < number {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func saveLottoSeries(count: Int) -> Dictionary<String, Set<Int>> {
    var lottoSeries: Dictionary<String, Set<Int>> = [String: Set<Int>]()
    for i in 1...count {
        lottoSeries["\(i)회차"] = makeLottoNumbers(number: 6)
    }
    return lottoSeries
}

func printWinningNumbers(count: Int) {
    let winningNumbers: [String: Set<Int>] = saveLottoSeries(count: 6)
    if let winningNumbers = winningNumbers["\(count)회차"] {
        print("\(count)회차의 번호는 :\(winningNumbers)입니다.")
    } else {
        print("값이 없습니다.")
    }
}
