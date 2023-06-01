//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


//let randomlottoNum = generateLotteryNum()
//compareLotteryNum(lottoNum: randomlottoNum)
//createLotteryRounds(roundCount: 5, do: generateLotteryNum)

let lottoNumbers = createLotteryRounds(numberOfRounds: 5)
matchLotteryWinningRounds(round: 2, lottoNumbersDictionary: lottoNumbers)
