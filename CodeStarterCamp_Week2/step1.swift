//
//  step1.swift
//  CodeStarterCamp_Week2
//
//  Created by Appledayz on 2023/03/03.
//

import Foundation

func createLottoNumbers() -> Set<Int> {
    var numbers = Set<Int>()
    for i in 1...45 {
        numbers.insert(i)
    }

    return Set(Array(numbers)[0..<6])
}
