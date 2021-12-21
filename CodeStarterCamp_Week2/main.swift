//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoNumbers: [Int] = [1, 22, 33, 44, 35, 26]

func createRandomLottoNumbers() -> Set<Int> {
    var matchNumber: Set<Int> = Set<Int>()
    while matchNumber.count < 6 {
        let randomLottoNumber = Int.random(in: 1...45)
        if !matchNumber.contains(randomLottoNumber){
            matchNumber.insert(randomLottoNumber)
        }
    }
    return matchNumber
}

func printMatchLottoResultMessage(lottoNumbers mylottoNumber: Array<Int>, createRandomLottoNumbers randomNumber: Set<Int>) {
    var lottoMatchNumber: [Int] = []
    for index in 0...(mylottoNumber.count-1) {
        if randomNumber.contains(mylottoNumber[index]) {
            lottoMatchNumber.append(mylottoNumber[index])
        }
    }
    if lottoMatchNumber.count > 0 {
        print("축하합니다!! 겹치는 번호는 \(lottoMatchNumber.sorted()) " + "입니다")
    } else {
        print("아쉽지만  겹치는 번호가 없습니다  다음기회에 재시도 해주세요")
    }
}

printMatchLottoResultMessage(lottoNumbers: lottoNumbers, createRandomLottoNumbers: createRandomLottoNumbers())

