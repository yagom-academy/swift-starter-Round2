//
//  step1.swift
//  CodeStarterCamp_Week2
//
//  Created by Appledayz on 2023/03/03.
//

import Foundation

func getLottoNumbers() -> Set<Int> {
    var numbers = Set<Int>()
    for i in 1...45 {
        numbers.insert(i)
    }

    return Set(Array(numbers)[0..<6])
}

func getLottoNumbers2() -> Set<Int> {
    var pickedNumbers: Set<Int> = []
    
    while (pickedNumbers.count < 6) {
        pickedNumbers.insert(Int.random(in: 1...45))
    }
    
    return pickedNumbers
}
