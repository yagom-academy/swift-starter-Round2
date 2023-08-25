//
//  Round2Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by QL Jeong on 2023/08/25.
//

import Foundation

func round2Step3Main() -> String {
    for _ in 1...5 {
        makeNewRoundLottoNumbers()
    }

    let targetRound = 2
    guard let winNumbres = getWinNumbers(at: targetRound) else {
        return "\(targetRound)회차는 진행 되지 않았습니다."
    }

    let winString = winNumbres
        .map( String.init )
        .joined(separator: ", ")

    return "\(targetRound)회차의 로또 당첨 번호는 \(winString) 입니다."
}

// MARK: - Private

@discardableResult fileprivate func makeNewRoundLottoNumbers() -> [Int] {
    let winNumbers = makeLottoNumbers()
    addWinNumbers(winNumbers)

    return winNumbers
}
