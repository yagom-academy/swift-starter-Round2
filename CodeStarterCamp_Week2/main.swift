//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let randomNumbers = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumbers)
    }
    
    return lottoNumbers
}

let myLottoNumbers: Set<Int> = [5, 19, 34, 25, 45, 23]
let intersectionNumbers: Set<Int> = generateLottoNumbers().intersection(myLottoNumbers)

func viewLottoResults() {
    if intersectionNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(intersectionNumbers.map {(intersection: Int) -> String in return String(intersection)}.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

//viewLottoResults()

var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()

func saveLottoRounds() {
    for round in 1...5 {
        lottoDictionary["\(round)회차"] = generateLottoNumbers()
    }
}

func viewLottoRounds(_ findLottoRounds: String) {
    if let lottoList = lottoDictionary[findLottoRounds] {
        print("\(findLottoRounds)의 로또 당첨 번호는 \(lottoList.map {(lottoList: Int) -> String in return String(lottoList)}.joined(separator: ", ")) 입니다.")
    } else {
        print("nil")
    }
}

saveLottoRounds()
viewLottoRounds("5회차")
