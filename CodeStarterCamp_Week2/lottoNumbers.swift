//
//  lottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by MIJU on 2022/02/23.
//

import Foundation


var randomLottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func generateLottoNumbers() -> Set<Int> {
    while randomLottoNumbers.count<6 {
        let number = Int.random(in: 1...45)
        randomLottoNumbers.insert(number)
    }
    return randomLottoNumbers
}

func checkLottoNumbers() {
    let matchLottoNumbers: Set<Int> = generateLottoNumbers().intersection(myLottoNumbers)
    if matchLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let lottoNumbers = matchLottoNumbers.map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(lottoNumbers)입니다!")
    }
}

