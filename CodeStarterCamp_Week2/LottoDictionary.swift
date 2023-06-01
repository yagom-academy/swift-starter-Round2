//
//  LottoDictionary.swift
//  CodeStarterCamp_Week2
//
//  Created by 김예림 on 2023/05/31.
//

import Foundation

// MARK: - 회차별 로또 당첨 번호 생성 함수
func createLotteryRounds(numberOfRounds: Int) -> Dictionary<String,[Int]>{
    var lottoNumbersDictionary: [String: [Int]] = [:]
    
    for count in 1...numberOfRounds {
        let lottoNumbersSet: Set<Int> = generateLotteryNum()
        let lottoNumbersArray: [Int] = Array(lottoNumbersSet)
        lottoNumbersDictionary["\(count)회차"] = lottoNumbersArray
    }
    
    return lottoNumbersDictionary
}

// MARK: - n 번째 회차 로또 번호 확인 함수
func matchLotteryWinningRounds(round: Int, lottoNumbersDictionary: [String:[Int]]) {
    
    guard let lottoNumbers = lottoNumbersDictionary["\(round)회차"] else { return }

    let lottoString = lottoNumbers.map{String($0)}.joined(separator: ", ")
    print("\(round)회차의 로또 당첨 번호는 \(lottoString) 입니다.")
}
