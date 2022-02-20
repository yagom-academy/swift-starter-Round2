//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var randomNumbers = Set<Int>()

func makeLottoNumbers() {
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
}

func resultLottoNumbers() {
    var winnigLottoNumbers = Set<Int>()
    winnigLottoNumbers = randomNumbers.intersection(myNumbers)
    let overLapNumber = winnigLottoNumbers.map { String($0) }.joined(separator: ", ")
    
    func printResultLotto(){
    if winnigLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(overLapNumber) 입니다!")
        }
    }
    printResultLotto()
}
func test1(){
    makeLottoNumbers()
    resultLottoNumbers()
}
test1()
