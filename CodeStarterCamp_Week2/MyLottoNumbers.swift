//
//  MyLottoNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by 서혜진 on 2023/03/05.
//

import Foundation

var theLottoWinNumbers: Set<Int> = Set<Int>()

func matchMyLottoNumbers(myLottoNumbers: Set<Int>) {
    let intersection: Set<Int> = theLottoWinNumbers.intersection(myLottoNumbers)

    if intersection.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let matchNumbers = intersection.sorted().map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchNumbers) 입니다!")
    }
}

