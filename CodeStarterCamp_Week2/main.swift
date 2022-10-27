//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - STEP 3

var lottoNumberRecode = [String: [Int]]() // 회차 별 로또 번호를 넣을 딕셔너리

/// 회차별 로또 번호 생성 후 딕셔너리에 저장하는 함수
/// - Parameter maxRound: 최대 회차 매개변수, 입력이 없으면 예시에 있던 5회차 만큼 저장
func saveLottoNumbers(maxRound: Int = 5) {
    for i in 1...maxRound {
        let round =  "\(i)회차"
        let lottoNumbers = createNewLottoNumbers()
        lottoNumberRecode[round] = lottoNumbers
    }
}

/// 회차 별 당첨 번호 출력 함수
/// - Parameter round: 조회할 회차 매개변수
/// 피드백 내용에 있던 고차함수 map 사용
func printLottoNumbersRound(round: Int) {
    let roundKey = "\(round)회차"
    if let lottoNumbers = lottoNumberRecode[roundKey]?.map({ String($0) }) {
        print("\(roundKey)의 로또 당첨 번호는 \(lottoNumbers.joined(separator: ", ")) 입니다.")
    } else {
        print("아직 진행되지 않은 회차입니다.")
    }
}

saveLottoNumbers()

printLottoNumbersRound(round: 1)
printLottoNumbersRound(round: 2)
printLottoNumbersRound(round: 3)
printLottoNumbersRound(round: 4)
printLottoNumbersRound(round: 5)
