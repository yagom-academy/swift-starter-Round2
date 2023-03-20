//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
import Foundation

var lottoResults: [String: Set<Int>] = [:]
var lastRound: Int = 0

runLotto(iteration: 5)
print(checkLottoNumbers(round: 2))
