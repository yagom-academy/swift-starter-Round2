//
//  LottoDictionary.swift
//  CodeStarterCamp_Week2
//
//  Created by 김예림 on 2023/05/31.
//

import Foundation


typealias lottoFunction = () -> Set<Int>

// MARK: - 회차별 로또 당첨 번호 생성 함수
func createLotteryRounds(roundCount: Int, do generateLotto: lottoFunction) -> Dictionary<String,[Int]>{
    var lottoDictionary: [String: [Int]] = [:]
    
    for count in 1...roundCount {
        let lottoSet = generateLotto()
        let lottoArray = Array(lottoSet)
        lottoDictionary["\(count)회차"] = lottoArray
    }
    
    return lottoDictionary
}


// MARK: - n 번째 회차 로또 번호 확인 함수
func matchLotteryWinningRounds(round: Int, roundLottoNumber lottoDictionary: [String:[Int]]) {
    
    guard let lottoNumber = lottoDictionary["\(round)회차"] else { return }
    
    let lottoString = lottoNumber.map{String($0)}.joined(separator: ", ")
    print("\(round)회차의 로또 당첨 번호는 \(lottoString) 입니다.")
}
