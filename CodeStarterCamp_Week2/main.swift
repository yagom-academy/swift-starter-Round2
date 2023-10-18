//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoGameResult: Set<Int> = Set<Int>()

while lottoGameResult.count < 6 {
    lottoGameResult.insert(Int.random(in: 1...45))
}

print("당첨번호 : \(lottoGameResult)")

