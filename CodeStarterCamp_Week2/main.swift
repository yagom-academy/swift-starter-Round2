//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

var lottoWinNumbers: Set<Int> = Set<Int>()

func setLottoWinNumbers() -> Set<Int> {
    while lottoWinNumbers.count < 6 {
        let element = Int.random(in: 1...45)
        lottoWinNumbers.insert(element)
    }
    return lottoWinNumbers
}

func matchMyLottoNumbers(myLottoNumbers: Set<Int>) {
    let intersection: Set<Int> = lottoWinNumbers.intersection(myLottoNumbers)

    if intersection.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let matchNumbers = intersection.sorted().map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchNumbers) 입니다!")
    }
}

setLottoWinNumbers()
matchMyLottoNumbers(myLottoNumbers: [1,2,3,4,5,6])
matchMyLottoNumbers(myLottoNumbers: [12,24,37,41,7,30])
