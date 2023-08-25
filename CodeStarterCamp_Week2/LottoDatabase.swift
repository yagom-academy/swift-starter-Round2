//
//  LottoDatabase.swift
//  CodeStarterCamp_Week2
//
//  Created by QL Jeong on 2023/08/25.
//

import Foundation

@discardableResult func addWinNumbers(_ winNumbers: [Int]) -> Int {
    let currentRound = winNumbersList.count + 1
    let key = makeKey(from: currentRound)
    winNumbersList.updateValue(winNumbers, forKey: key)

    return currentRound
}

func getWinNumbers(at round: Int) -> [Int]? {
    let key = makeKey(from: round)

    return winNumbersList[key]
}

func getAllWinNumbers() -> [String: [Int]] {
    return winNumbersList
}

// MARK: - Private

fileprivate var winNumbersList = [String: [Int]]()

fileprivate func makeKey(from round: Int) -> String {
    return "\(round)회차"
}
