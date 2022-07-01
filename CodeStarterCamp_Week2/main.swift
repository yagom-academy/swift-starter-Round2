//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
let lottoFunction = function()

// 딕셔너리 생성
var lottoNumberDic: [String:Array<Int?>] = [:]

// 로또번호 5번 생성
for _ in 1...5 {
    lottoFunction.tryLotto()
}

// 원하는 회차 선택
let round = 3
lottoFunction.printLottoResult(round)
