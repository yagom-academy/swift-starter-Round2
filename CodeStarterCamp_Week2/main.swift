//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    let numbers: Array<Int> = Array(1...45)
    let randomNumbers = numbers.shuffled()
    let lottoNumbers: Set<Int> = Set(randomNumbers[0...5])
    return lottoNumbers
}
let lottoNumbers = generateLottoNumbers()

func generateLottoPack(lottoNumbers: Set<Int>) -> Dictionary<String, String> {
    var lottoNumberDict: Dictionary<String, String> = Dictionary<String, String>()
    for count in 1...5 {
        lottoNumberDict["\(count)회차"] = "\(lottoNumbers)"
    }
    return lottoNumberDict
}
let lottoNumberDict = generateLottoPack(lottoNumbers: lottoNumbers)

func findSecondLottoNumber(week: String, lottoNumberDict: Dictionary<String, String>) {
    if let winnigLottoNumber = lottoNumberDict["\(week)"] {
        let finalLottoNumber = "\(winnigLottoNumber)".trimmingCharacters(in: ["[","]"])
        print("\(week) 로또 당첨 번호는 \(finalLottoNumber) 입니다.")
    } else {
        print("선택하신 회차의 로또 번호는 없습니다.")
    }
}
findSecondLottoNumber(week: "2회차", lottoNumberDict: lottoNumberDict)
