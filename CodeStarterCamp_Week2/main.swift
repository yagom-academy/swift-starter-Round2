//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 7, 8, 9, 21, 31]
var collectLottoNumbers: [String: Set<Int>] = [:]

func generateLottoNumbers() -> Set<Int> {
    var generateNumbers: Set<Int> = []
    
    while generateNumbers.count < 6 {
        generateNumbers.insert(Int.random(in: 1...45))
    }
    return(generateNumbers)
}

func addFiveTimesLottoInDic() {
    for lottoCount in 1...5 {
        collectLottoNumbers["\(lottoCount)회차"] = generateLottoNumbers()
    }
}

func winLotto(round: [Int]) -> String {
    var winLottoNumber = ""
    
    for count in 0...5 {
        if count < 5 {
            winLottoNumber.append("\(round[count]), ")
        }
        else {
            winLottoNumber.append("\(round[count])")
        }
    }
    return winLottoNumber
}

func checkLotto(round: Int) {
    let changeToArrayRoundLotto: Array<Int> = sortedCollectLottoNumbers[round-1].1.sorted()
    print("\(round)회차의 로또 당첨 번호는 \(winLotto(round: changeToArrayRoundLotto)) 입니다")
}

addFiveTimesLottoInDic()

var sortedCollectLottoNumbers = collectLottoNumbers.sorted{$0.0 < $1.0}

checkLotto(round: 2)
