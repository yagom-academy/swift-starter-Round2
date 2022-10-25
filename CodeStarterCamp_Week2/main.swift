//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbersSet: Set<Int> = Set<Int>()
    
    while lottoNumbersSet.count < 6 {
        var randomInt = Int.random(in: 1...45)
        
        lottoNumbersSet.insert(randomInt)
    }
    
    return lottoNumbersSet
}

func checkLottoNumbers(lottoNumbers: Set<Int>, myNumbers: [Int]) {
    let intersection: Set<Int> = lottoNumbers.intersection(myNumbers)
    
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersection) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var myLottoNumbers: [Int] = [3, 9, 12, 43, 29, 24]

var lottoNumbers: Set<Int> = Set<Int>()

lottoNumbers = generateLottoNumbers()

checkLottoNumbers(lottoNumbers: lottoNumbers, myNumbers: myLottoNumbers)

// 로또 번호가 제대로 생성 됐는지 확인!
print(lottoNumbers)

lottoNumbers = generateLottoNumbers()

checkLottoNumbers(lottoNumbers: lottoNumbers, myNumbers: myLottoNumbers)

// 로또 번호가 제대로 생성 됐는지 확인용!!
print(lottoNumbers)
