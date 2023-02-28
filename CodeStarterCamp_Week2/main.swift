//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]


func drawLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    for var count in 1 ... 6 {
        let randomNumber1to45 = Int.random(in: 1 ... 45)
        
        if lottoNumbers.contains(randomNumber1to45) {
            count -= count
            continue
        }
        lottoNumbers.insert(randomNumber1to45)
    }
    
    return lottoNumbers
}


func compareLottoNumbers() {
    let lottoNumber: Set<Int> = drawLottoNumbers()
    
    if !lottoNumber.intersection(Set(myLottoNumbers)).isEmpty {
        let intersectionLottoNumbers = lottoNumber.intersection(Set(myLottoNumbers)).sorted().map {String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(intersectionLottoNumbers) 입니다!")
    }else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}

compareLottoNumbers()

