//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
import Foundation

let lottoNumbers: Set<Int> = generateLottoNumbers()
let myLottoNumbers: Set<Int> = inputMyLottoNumbers()

compareLottoAndMyNumbers(myLottoNumbers, lottoNumbers)
