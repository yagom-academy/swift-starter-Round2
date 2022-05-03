//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//회차별 로또번호
var lottoList: [String: [Int]] = [:]  //이니셜라이저?
saveLottoHistory(count: 5)
print("2회차의 로또 당첨 번호는 \(lottoList["2회차"]!.map(String.init).joined(separator: ", ")) 입니다.")
