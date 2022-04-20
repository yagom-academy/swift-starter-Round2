//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLotto() -> Array<Int> {
    var lottoBox: Set<Int> = Set<Int>()
    
    while lottoBox.count < 6 {
        let randomNum: Int = Int.random(in: 1...45)
        
        lottoBox.insert(randomNum)
    }
    
    return Array(lottoBox)
}
