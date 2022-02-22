//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumberDict: [String: Set<Int>] = [String: Set<Int>]()

func generateLottoNumbers() -> Set<Int> {
    let numbers: Array<Int> = Array(1...45)
    let randomNumbers = numbers.shuffled()
    let lottoNumbers: Set<Int> = Set(randomNumbers[0...5])
    return lottoNumbers
}

func generateLottoPack() {
    for count in 1...5 {
        lottoNumberDict["\(count)회차"] = generateLottoNumbers()
    }
}

func findWeekLottoNumber(in week: String, from lottoNumberDict: [String: Set<Int>]) {
    if let winnigLottoNumber = lottoNumberDict[week] {
        let finalLottoNumber = "\(winnigLottoNumber)".trimmingCharacters(in: ["[","]"])
        print("\(week) 로또 당첨 번호는 \(finalLottoNumber) 입니다.")
    } else {
        print("선택하신 회차의 로또 번호는 없습니다.")
    }
}

generateLottoPack()
findWeekLottoNumber(in: "2회차", from: lottoNumberDict)
