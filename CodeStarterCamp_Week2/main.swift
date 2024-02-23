//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var previousLottoResults: Dictionary<String, Set<Int>> = [String: Set<Int>]()

savePreviousResults()

if let result = previousLottoResults["2회차"] {
    print("2회차의 로또 당첨 번호는 \(result.sorted().map{ String($0) }.joined(separator: ", ")) 입니다.")
} else {
    print("previousLottoResults == nil")
}

func savePreviousResults() {
    for count in 1...5{
        previousLottoResults["\(count)회차"] = generateLottoNumbers()
    }
}











