//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoHistory: Dictionary<String, Array> = Dictionary<String, Array<Int>>()

/// 로또 당첨 번호 생성
/// - Returns: 랜덤으로 생성된 6개의 숫자가 포함된 Set 컬렉션타입
func drawNumbers() -> Set<Int> {
    var num: Int
    var lotto: Set<Int> = Set<Int>()
    
    while lotto.count < 6 {
        num = Int.random(in: 1...45)
        lotto.insert(num)
    }
    
    return lotto
}

/// 로또 당첨 번호 생성 함수를 5번 호출하여 lottoHistory Dictionary에 저장하는 함수
func storeLottoHistory() {
    for roundNumbers in 1...5 {
        lottoHistory["\(roundNumbers)회차"] = Array(drawNumbers())
    }
}

/// 원하는 회차의 로또 당첨 번호를 확인하고 출력하는 함수
/// - Parameter round: 출력을 원하는 회차 매개변수 String
func printLottoNumbers(for round: String) {
    if let lottoNumbers = lottoHistory["\(round)"] {
        var string = lottoNumbers.map{ String($0) }.joined(separator: ", ")
        print("\(round)의 로또 당첨 번호는 \(string) 입니다.")
    }
    else {
        print("\(round) 정보는 없습니다.")
    }
}

storeLottoHistory()
printLottoNumbers(for: "1회차")
printLottoNumbers(for: "2회차")
printLottoNumbers(for: "3회차")
printLottoNumbers(for: "4회차")
printLottoNumbers(for: "5회차")
printLottoNumbers(for: "6회차")
