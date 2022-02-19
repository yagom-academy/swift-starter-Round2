//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
var randomNumbers = Set<Int>()
func makeLottoNumbers() {
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    print(randomNumbers)
}
let myLottoNumbers: Set<Int> = [20, 37, 30, 5, 40 ,22]
var printlotto: Set<Int> = []
func compareMyLottonumbers() {
    let collectionLottoNumbers: Set<Int> = myLottoNumbers.intersection(printlotto)
    if collectionLottoNumbers.isEmpty == false {
        print("축하합니다 겹치는 번호는\(collectionLottoNumbers)입니다.")
    } else if collectionLottoNumbers.isEmpty == true {
        print("아쉽지만 꽝! 입니다 다음 기회에!")
    }
}
printlotto = [20, 37, 5 , 22, 11]
compareMyLottonumbers()
printlotto = [12, 4, 45, 2, 19, 33]
compareMyLottonumbers()

