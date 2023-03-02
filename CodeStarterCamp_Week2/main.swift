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
    var lottoNumbers = Set<Int>()

    while lottoNumbers.count < 6  {
        lottoNumbers.insert(Int.random(in: 1 ... 45))
    }

    return lottoNumbers
}


func compareLottoNumbers() {
    let lottoNumber: Set<Int> = drawLottoNumbers()
    
    let intersectionLottoNumbers = lottoNumber.intersection(Set(myLottoNumbers))
    
    if !intersectionLottoNumbers.isEmpty {
        var winningNumbers = intersectionLottoNumbers.description
        
        winningNumbers.removeFirst()
        winningNumbers.removeLast()
        
        print("축하합니다! 겹치는 번호는 \(winningNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}

compareLottoNumbers()

