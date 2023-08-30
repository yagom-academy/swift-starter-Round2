//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    var number: Int
    
    while lottoNumbers.count < 6 {
        number = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
    
    return lottoNumbers
}

