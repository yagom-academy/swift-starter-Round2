//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [1, 16, 19, 23, 33, 45]
let lottoWinningNumbers: Set<Int> = makeLottoNumbers()
let matchedNumbers: Set<Int> = lottoWinningNumbers.intersection(myLottoNumbers)

if matchedNumbers.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(matchedNumbers.map({ String($0) }).joined(separator: ", ")) 입니다!")
}
