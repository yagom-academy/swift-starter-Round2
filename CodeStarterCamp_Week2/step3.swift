//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 강원준 on 2022/07/05.
//

import Foundation
var savedLottoRecord : Dictionary<String,[Int]> = [:]

func createLottoNumber(totalLottonumber: Int) {
    for n in 1...totalLottonumber {
        savedLottoRecord["\(n)회차"] = printLottoNumber().sorted()
    }
}
func findLottoNumber(round: Int) {
    if let lottoNumbers: [Int] = savedLottoRecord["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers)입니다.")
    }
}
createLottoNumber(totalLottonumber: 5 )
findLottoNumber(round: 3)
