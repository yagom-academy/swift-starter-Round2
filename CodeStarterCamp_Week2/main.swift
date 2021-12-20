//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func createWinnigNumbers() -> Set<Int>{
    var numbers : Set<Int> = Set<Int>()
    
    repeat {
        numbers.insert(Int.random(in: 1...45))
    }while numbers.count < 6
    
    return numbers
}
