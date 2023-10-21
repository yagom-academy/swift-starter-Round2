//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


func drawLottoNumbers() -> Set<Int>{
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func lottoDrawHistory() -> Dictionary<String, Set<Int>> {
    var NumberHistory: Dictionary<String, Set<Int>> = [:]
    var drawCount = 1
    while drawCount <= 5 {
        let saveLottoNumbers = drawLottoNumbers()
        NumberHistory["\(drawCount)회차"] = saveLottoNumbers
        drawCount += 1
    }
    return NumberHistory
}

func searchHistory(회차: String) {
    let lottoResult = lottoDrawHistory()
    if let resultNumbers = lottoResult[회차]
    {
        let stringResultNumbers = resultNumbers.map { String($0) }.joined(separator: ", ")
        print("\(회차)의 로또 당첨 번호는 \(stringResultNumbers) 입니다.")
    }
    else
    {
        print("\(회차)의 결과가 없습니다.")
    }
}


print(lottoDrawHistory())
searchHistory(회차: "3회차")

