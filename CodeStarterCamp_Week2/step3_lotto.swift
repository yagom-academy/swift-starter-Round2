//
//  step3_lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by 유넬리 on 2022/05/03.
//

import Foundation

func saveLottoHistory(count: Int) {
    for i in 1...count {
        lottoList["\(i)회차"] = generateLotto()
    }
}

