//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = Set<Int>()

func makeLottoNumber() {
    let random = Int.random(in: 1...45)
    lottoNumber.insert(random)
}
