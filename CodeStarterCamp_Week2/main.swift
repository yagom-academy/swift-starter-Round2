//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func pickLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}


func compareSameNumbers(_ lottoNumbers: Set<Int>, with myLottoNumbers: Array<Int>) -> Set<Int> {
    let sameNumbers: Set<Int> = Set(myLottoNumbers).intersection(lottoNumbers)
    
    return sameNumbers
}



func printSameNumbers(lottoNumbers: Set<Int>, myLottoNumbers: Array<Int>) {
    if compareSameNumbers(lottoNumbers, with: myLottoNumbers).count > 0 {
        
        var StringSameNumbers = [String]()
        
        for num in compareSameNumbers(lottoNumbers, with: myLottoNumbers) {
            StringSameNumbers.append(String(num))
        }
        
        StringSameNumbers.sort()
        
        print("축하합니다! 겹치는 번호는 \(StringSameNumbers.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let lottoNumbers = pickLottoNumbers()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]









