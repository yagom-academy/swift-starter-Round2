//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers = [2,3,8,21,38,44]
var lottoNumbersByRound = [String: Set<Int>]()

func pickRandomNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    var lottoRangeNumbers = Array(1...45)
    
    while lottoNumbers.count < 6 {
        if let randomNumber = lottoRangeNumbers.randomElement() {
            lottoNumbers.insert(randomNumber)
            lottoRangeNumbers.removeAll(where: { $0 == randomNumber })
        } else { lottoRangeNumbers = Array(1...45) }
    }
    saveNumbersByRound(round: lottoNumbersByRound.count + 1, numbers: lottoNumbers)
    return lottoNumbers
}

func checkOverlapNumbers(myNumbers: Array<Int>, lottoNumbers: Set<Int>) -> String {
    let overLapNumbers = lottoNumbers.intersection(myNumbers)
    
    if !overLapNumbers.isEmpty {
        return "축하합니다! 겹치는 번호는 \(removeBracketFromSet(set: overLapNumbers)) 입니다!"
    } else { return "아쉽지만 겹치는 번호가 없습니다." }
}

func findNumbersByRound(round: Int) -> String {
    if let numbersByRound = lottoNumbersByRound["\(round)회차"] {
        return "\(round)회차의 로또 당첨 번호는 \(removeBracketFromSet(set: numbersByRound)) 입니다."
    } else { return "해당 회차의 로또 번호가 없습니다." }
}

func removeBracketFromSet(set: Set<Int>) -> String {
    return set.sorted().map { "\($0)" }.joined(separator: ", ")
}

func saveNumbersByRound(round: Int, numbers: Set<Int>) {
    lottoNumbersByRound["\(round)회차"] = numbers
}

func repeatRound(numberOfRepetitions: Int) {
    var repeatResult = ""
    if (numberOfRepetitions <= 0) { repeatResult = "1회 미만으로 반복할 수 없습니다." }
    else {
        for _ in 1...numberOfRepetitions {
            repeatResult += checkOverlapNumbers(myNumbers: myLottoNumbers, lottoNumbers: pickRandomNumbers()) + "\n"
        }
    }
    print(repeatResult)
}

repeatRound(numberOfRepetitions: 5)
print(findNumbersByRound(round: 2))
