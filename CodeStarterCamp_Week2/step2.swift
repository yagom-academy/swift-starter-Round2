//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by suyeon park on 2023/03/03.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLotto() {
    var count = 0
    var lottoSet: Set<Int> = Set<Int>()
    var canAddNumber = false
    while (count < 6) {

        let number = Int.random(in: 0...45)
        
        if lottoSet.count == 0 {
            
        } else {
            
        }
        
        count = count + 1
    }
    
}
