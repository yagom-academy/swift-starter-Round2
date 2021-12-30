//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func lottoPrizeNumbers() -> Set<Int> {
    
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}

func checkLottoPrizeNumber() {
    
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    
    let sameLottoNumbers: Set<Int> = lottoPrizeNumbers().intersection(myLottoNumbers)
    
    let arrangeSameLottoNumbers : String = arrangeNumber(numbers: sameLottoNumbers)
    
    if sameLottoNumbers.count < 1 {
        
        print("아쉽지만 겹치는 번호가 없습니다")
        
    } else {
        
        print("축하합니다! 겹치는 번호는 \(arrangeSameLottoNumbers) 입니다!")
    }
}

func arrangeNumber(numbers : Set<Int>) -> String {
    
    var lottoNumbers : [String] = []
    
    for numbers in numbers {
        
        lottoNumbers.append(String(numbers))
        
    }
    
    let resultNumbers = lottoNumbers.joined(separator: ", ")
    
    return resultNumbers
    
}

checkLottoPrizeNumber()



