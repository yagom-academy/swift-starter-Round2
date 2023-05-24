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
