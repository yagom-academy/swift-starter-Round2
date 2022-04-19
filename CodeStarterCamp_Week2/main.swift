//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoCountLimit = 6
let lottoNumberLimit = 45
let lottoNumberRange = 1...lottoNumberLimit

func generateRandomNumber() -> Int{
    return Int.random(in: lottoNumberRange)
}
