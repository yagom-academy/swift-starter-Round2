//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by quokkaaa
//  Copyright © yagom academy. All rights reserved

import Foundation

func generateLotteryNumbers(count: Int) -> Set<Int> {
    var numbers: Set<Int> = []
    while numbers.count < count {
        numbers.insert(Int.random(in: 1...45))
    }
    return numbers
}
