//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func pickedLottoNumbers() -> Set<Int>{
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6 {
        let num = Int.random(in: 1...45)
        lottoNumbers.insert(num)
    }

    return lottoNumbers
}

func checkLottoNumbers(winTheLotteryNumbers: Set<Int>, myLottoNumbers: Set<Int>) {
    let intersectionNumbers = winTheLotteryNumbers.intersection(myLottoNumbers)
    let arrayIntersectionNumbers = intersectionNumbers.map { String($0) }
    var resultOfLotto = String()
    
    if arrayIntersectionNumbers.count > 0 {
        resultOfLotto = "축하합니다! 겹치는 번호는 \(arrayIntersectionNumbers.joined(separator: ", ")) 입니다!"
    } else {
        resultOfLotto = "아쉽지만 겹치는 번호가 없습니다."
    }
    
    print(resultOfLotto)
}

let winTheLotteryNumbers = pickedLottoNumbers()
let myLottoNumbers = pickedLottoNumbers()

checkLottoNumbers(winTheLotteryNumbers: winTheLotteryNumbers, myLottoNumbers: myLottoNumbers)
