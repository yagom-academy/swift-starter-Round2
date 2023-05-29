//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 이지원 on 2023/05/29.
//

import Foundation

func savedLottoResult(_ lottos: Set<Int>) {
    let cnt = lottoHistories.count
    lottoHistories["\(cnt)회차"] = Array(lottos)
}

func fetchLottoResult(at number: Int) {
    let key = "\(number)회차"
    guard let result = lottoHistories[key] else {
        print("아직 진행되지 않은 회차입니다.")
        return
    }
    print("\(key)의 로또 당첨 번호는 \(result)입니다.")
}
