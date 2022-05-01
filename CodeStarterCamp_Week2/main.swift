//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() -> Set<Int>{
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }

    return lottoNumbers
}

func checkLottoNumbers(winTheLottery: Set<Int>, myLotto: Set<Int>) {
    let intersectionNumbers = winTheLotteryNumbers.intersection(myLottoNumbers)
    let arrayIntersectionNumbers = intersectionNumbers.map { String($0) }
    
    if arrayIntersectionNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(arrayIntersectionNumbers.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let winTheLotteryNumbers = createLottoNumbers()
let myLottoNumbers = createLottoNumbers()

checkLottoNumbers(winTheLottery: winTheLotteryNumbers, myLotto: myLottoNumbers)
