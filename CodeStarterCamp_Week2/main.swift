//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoSet: Set<Int> = Set<Int>()
let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

generateLottoNums()
checkLottoNums()

func generateLottoNums() {
    while (lottoSet.count < 6 ) {
        let randomNum: Int = Int.random(in: 1...45)
        lottoSet.insert(randomNum)
    }
    print("이번 로또 당첨 번호는 \(lottoSet.sorted()) 입니다.")
}

func checkLottoNums() {
    let intersectionLottoNum: Set<Int> = lottoSet.intersection(myLottoNumbers)
    print("나의 로또 번호는 \(myLottoNumbers.sorted()) 입니다.")
    
    if (intersectionLottoNum.count >= 1) {
        print("축하합니다! 겹치는 번호는 \(intersectionLottoNum.sorted()) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
