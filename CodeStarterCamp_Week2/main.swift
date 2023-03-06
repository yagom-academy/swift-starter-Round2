//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lotteryHistory: [String: [Int]] = [:]
lotteryHistory = genarateAndSaveLotteryNumbers(to: lotteryHistory, iteration: 5)
findLotteryNumbers(round: 2, from: lotteryHistory)
