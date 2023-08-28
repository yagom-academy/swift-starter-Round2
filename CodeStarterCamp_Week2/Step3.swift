//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by yongyong on 2023/08/25.
//

import Foundation

func makeLottoNumbersDictionary() -> [String: Set<Int>] {
    var resultNumbers: [String : Set<Int>] = [:]

    for _ in 0..<5 {
        resultNumbers["\(resultNumbers.keys.count + 1)회차"] = makeLottoNumbers()
    }

    return resultNumbers
}

func showRoundLottoNumbers(round: Int) {
    let resultNumbers = makeLottoNumbersDictionary()

    if let checkNumbers = resultNumbers["\(round)회차"] {

        let changedCheckNumbers = checkNumbers.map { String($0) }.joined(separator: ", ")

        print("\(round)회차의 로또 당첨 번호는 \(changedCheckNumbers) 입니다.")
    } else {
        print("해당 회차의 로또 당첨 번호는 없습니다.")
    }
}


