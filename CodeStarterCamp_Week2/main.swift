//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


func generateLottoNumbers() -> Set<Int>{
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func recordLottoNumber() -> Dictionary<String, Set<Int>> {
    var numberHistory: Dictionary<String, Set<Int>> = [:]
    for drawCount in 1...5 {
        numberHistory["\(drawCount)회차"] = generateLottoNumbers()
    }
    return numberHistory
}

func searchHistory(회차: String) {
    let lottoResult = recordLottoNumber()
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


searchHistory(회차: "3회차")

