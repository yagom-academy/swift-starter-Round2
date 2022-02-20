//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var sixLottoNumbers = Set<Int>()

func makeLottoNumbers() {
    while sixLottoNumbers.count < 6 {
        sixLottoNumbers.insert(Int.random(in: 1...45))
    }
}

func resultLottoNumbers() {
    var overlapNumber = Set<Int>()
    overlapNumber = sixLottoNumbers.intersection(myNumbers)
    let printedOverlapNumber = overlapNumber.map { String($0) }.joined(separator: ", ")
    
    func showResultLotto() {
    if overlapNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(printedOverlapNumber) 입니다!")
        }
    }
    showResultLotto()
}
func buyLotto(){
    makeLottoNumbers()
    resultLottoNumbers()
}
buyLotto()
