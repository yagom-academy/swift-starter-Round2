//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 이지원 on 2023/05/29.
//

import Foundation

func createLotto() {
    let round = lottoHistories.count // 현재 회차
    let newLotto = getLottoNumber()
    saveLottoResult(for: round, with: newLotto)
}

func saveLottoResult(for round: Int, with lotto: Set<Int>) {
    lottoHistories["\(round)회차"] = Array(lotto)
}

func fetchLottoResult(at round: Int) {
    let key = "\(round)회차"
    guard let result = lottoHistories[key] else {
        print("아직 진행되지 않은 회차입니다.")
        return
    }
    print("\(key)의 로또 당첨 번호는 \(result)입니다.")
}
