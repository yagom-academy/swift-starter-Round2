//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


func drawLottoNumbers() -> Set<Int>{
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
        return lottoNumbers
}

    
func playLotto() {
    let myLottoNumbers : Set<Int> = [1, 2, 3, 4, 5, 6]
    matchedLotto(myLottoNumbers: myLottoNumbers)
    }

