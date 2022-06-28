//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 로또 당첨 번호를 생성하는 함수
var winningNumber: Set<Int> = Set<Int>()

while winningNumber.count < 6 {
    winningNumber.insert(Int.random(in: 1...45))
}

