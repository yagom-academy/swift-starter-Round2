//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbersList = [String: Set<Int>]()
var lottoCount = 0

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let random = Int.random(in: 1...45)
        lottoNumbers.insert(random)
    }
    lottoCount = lottoCount + 1
    lottoNumbersList["\(lottoCount)회차"] = lottoNumbers
    return lottoNumbers
}

func checkLottoNumbers() -> Set<Int> {
    let lottoNumbers = makeLottoNumbers()
    let myLottoNumbers = [1, 2, 3, 4, 5, 6]
    let winningLottoNumbers = lottoNumbers.intersection(myLottoNumbers)
    return winningLottoNumbers
}

func printLottoResult() {
    let winningLottoNumbers = checkLottoNumbers()
    if winningLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        let arrayNumbers = [Int](winningLottoNumbers).sorted().map{String($0)}
        print("축하합니다! 겹치는 번호는 \(arrayNumbers.joined(separator: ", ")) 입니다!")
    }
}

func playLotto() {
    printLottoResult()
}

playLotto()
playLotto()
playLotto()
playLotto()
playLotto()

print(lottoNumbersList["\(2)회차"])
