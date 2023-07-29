//
//  randomLottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by 홍성준 on 2023/07/21.
//

import Foundation

// 로또 당첨 번호를 생성하는 함수
func makeLottoNumbers() {
    var lottoNumbers: Set<Int> = Set<Int>()
    var lottoNumber: Int
    while lottoNumbers.count < 6 {
        lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    // 생성한 로또 당첨 번호를 저장
    saveLottoNumbers(newLottoNumbers: lottoNumbers)
}

// 로또 당첨 번호를 저장하는 함수
func saveLottoNumbers(newLottoNumbers: Set<Int>) {
    let turn = lottoHistory.count
    lottoHistory[String(turn+1)+"회차"] = newLottoNumbers
}

// n회차의 로또 당첨번호를 출력합니다.
func findLottoNumbers(_ n: Int) {
    let turn: String = String(n)+"회차"
    // if-let 구문을 사용하여 n회차의 당첨번호를 가져옵니다.
    if let lotto = lottoHistory[turn] {
        // 당첨 회차의 번호를 문자열로 변환합니다.
        let lottoNumbers: String = lotto.map {String($0)}.joined(separator: ", ")
        print("\(n)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다.")
    } else {
        print("아직 해당 회차는 진행되지 않았습니다.")
    }
}


// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func checkLottoNumbers(myNumbers: [Int], lottoNumbers: Set<Int>) -> Void {
    //Set의 집합연산을 활용하여 같은 번호를 골라줍니다.
    //let correctNumbers: Set<Int> = lottoNumbers.intersection(myNumbers)
    
    var correctNumbers: Array<Int> = []
    
    for myNumber in myNumbers {
        if lottoNumbers.contains(myNumber) {
            correctNumbers.append(myNumber)
        }
    }
    
    // 겹치는 숫자들 문자열로
    let overlapNumbers: String = correctNumbers.map {String($0)}.joined(separator: ", ")
    
    if correctNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(overlapNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}





