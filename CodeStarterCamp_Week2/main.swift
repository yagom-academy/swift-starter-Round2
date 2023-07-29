//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 로또 당첨 번호를 회차별로 저장할 딕셔너리
var lottoHistory: [String: Set<Int>] = [:]

// 로또 당첨 번호를 5번 생성합니다.
makeLottoNumbers()
makeLottoNumbers()
makeLottoNumbers()
makeLottoNumbers()
makeLottoNumbers()

// n회차의 로또 당첨번호를 출력합니다.
findLottoNumbers(5)

