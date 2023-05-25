//
//  Lottery.swift
//  CodeStarterCamp_Week2
//
//  Created by ChoiKwangWoo on 2023/05/23.
//

import Foundation

func getLottoNumbers() -> [Int] {
    var lottoNumbers = Set<Int>()
    while lottoNumbers.count != 6, let randomNumber = (1...45).randomElement() {
        lottoNumbers.insert(randomNumber)
    }
    return Array(lottoNumbers)
}

func checkLottoNumber(picked: [Int], goal: [Int]) {
    let sameNumbers: [Int] = goal.filter{ picked.contains($0) }
    guard sameNumbers.count > 0 else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    let sameNumberList = sameNumbers.sorted().map{ String($0) }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(sameNumberList) 입니다!")
}

func createLottoStorageByCount(count: Int) -> [String: [Int]] {
    var lottoStorage: [String: [Int]] = [:]
    for round in 1...count {
        lottoStorage["\(round)회차"] = getLottoNumbers()
    }
    return lottoStorage
}

func showTargetRoundLotto(target: Int, lotto: [String: [Int]]) {
    guard let targetRoundLotto = lotto["\(target)회차"] else {
        print("\(target)회차의 로또번호가 없습니다.")
        return
    }
    print("\(target)회차의 로또 당첨 번호는 \(targetRoundLotto.sorted().map{ String($0) }.joined(separator: ", ")) 입니다.")
}
