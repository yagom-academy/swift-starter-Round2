//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 박신영 on 2023/08/01.
//

import Foundation

// lotto 회차별 당첨번호 저장할 딕셔너리 변수 생성
var lottoDic: Dictionary<Int, String> = [Int: String]()

// 각 회차 판단할 변수 생성
var countOfLotto: Int = 1

// MARK: - 로또 당첨번호 생성하는 함수
func makeLottoNumbers() -> Set<Int>{
    var lottoNumbers: Set<Int> = []

    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

// MARK: - 결과 출력시 [] 와 같은 대괄호를 없애기 위한 함수
func lottoDicWithSeparator() {
    let lottoNumbers = makeLottoNumbers()
    let lottoWithMap = lottoNumbers.map({String($0)})
    let lottoWithJoined = lottoWithMap.joined(separator: ",")
    lottoDic[countOfLotto] = lottoWithJoined
    countOfLotto += 1
}

// MARK: - 로또 당첨번호 5회차 생성
for _ in 0..<5 {
    lottoDicWithSeparator()
}

// MARK: - lottoDic에 담긴 각 회차별 당첨번호를 옵셔널로부터 안전하게 언래핑함과 동시에 nil 판별 위한 함수
func printOutWinningNumbers(_ key: Int) {
    if let lottoWithJoined = lottoDic[key] {
        printLotto(key: key, value: lottoWithJoined)
    } else {
        print("해당 값은 nil 상태입니다")
    }
}

// MARK: - 사용자가 요구하였던 회차에 맞는 로또 당첨 번호를 출력해주는 함수
func printLotto(key: Int, value: String) {
    print("\(key)회차의 로또 당첨 번호는 \(value) 입니다.")
}

printOutWinningNumbers(4)
