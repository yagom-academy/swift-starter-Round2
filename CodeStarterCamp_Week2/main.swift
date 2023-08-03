//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 박신영 on 2023/08/01.
//

import Foundation

// lotto 회차별 당첨번호 저장할 딕셔너리 변수 생성
var lottoDic = [String: Set<Int>]()

// 각 회차 판단할 변수 생성
var countOfLotto: Int = 1

// MARK: - 로또 당첨번호 생성하는 함수
func makeLottoNumbers() {
    var lottoNumbers: Set<Int> = []

    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    addWinningNumber(lottoNumbers)
}

// MARK: - 생성된 로또 번호 출력시 대괄호 없애기 위한 함수
func lottoDicWithSeparator(_ value: Set<Int>) -> String {
    let lottoNumbers = value
    let lottoWithCustom = lottoNumbers.map({String($0)}).joined(separator: ", ")
    return lottoWithCustom
    
}


// MARK: - [] 대괄호를 없앤 값을 lottoDic 딕셔너리에 값 저장하는 함수
func addWinningNumber(_ value: Set<Int>) {
    lottoDic["\(countOfLotto)회차"] = value
    countOfLotto += 1
}


// MARK: - lottoDic에 담긴 각 회차별 당첨번호를 옵셔널로부터 안전하게 언래핑함과 동시에 nil 판별 위한 함수
func printOutWinningNumbers(_ key: String) {
    if let lottoWithJoined = lottoDic[key] {
        printLotto(key, lottoWithJoined)
    } else {
        print("해당 값은 nil 상태입니다")
    }
}


// MARK: - 사용자가 요구하였던 회차에 맞는 로또 당첨 번호를 출력해주는 함수
func printLotto(_ key: String, _ value : Set<Int>) {
    var customLottoNumber = lottoDicWithSeparator(value)
    print("\(key)의 로또 당첨 번호는 \(customLottoNumber) 입니다.")
}


// MARK: - 로또 당첨번호 5회차 생성
for _ in 0..<5 {
    makeLottoNumbers()
}

printOutWinningNumbers("4회차")
