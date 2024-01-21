//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

var Round: Int = 0
var roundNumbers: Dictionary<String, Set<Int>> = [String: Set<Int>]()

func makeLottoNumbers() {
    var lottoNumbers: Set<Int> = Set<Int>()
    Round += 1
    while lottoNumbers.count != 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    roundNumbers["\(Round)회차"] = lottoNumbers
}

func checkLottoNumbers(round: Int) {
    if let lottoNum = roundNumbers["\(Round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNum.map(String.init).joined(separator: ", ")) 입니다.")
    }
}

for _ in 1...5 {
    makeLottoNumbers()
}
 
checkLottoNumbers(round: 2)


