//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//1. 1부터 45 사이의 랜덤한 숫자를 생성합니다.
//2. Collection 타입 중 하나를 선택해, 6개의 랜덤한 숫자를 저장합니다.
//3. 6개의 숫자는 ‘서로 겹치지 않아야’ 합니다.
//4. 이 함수는 6개의 랜덤한 숫자를 저장한 Collection 타입의 값을 반환합니다.
var lottoNumbers = Set<Int>()
let myLottoNumbers: Set<Int> = [1,2,3,4,5,6]
var round: Int = 1
var winningLottoNumbers: [String: [Int]] = [:]
var countWinningLottoNumbers: String = ""

func countUpLottoNumbers() {
    round += 1
    makeLottoNumbers()
}

func saveDictionary(key: String, value : [Int]) {
    countWinningLottoNumbers = "\(round)회차"
    winningLottoNumbers.updateValue(value, forKey: key)
}

func makeLottoNumberFiveTimes() {
    for _ in 1...5 {
        countUpLottoNumbers()
        saveDictionary(key: countWinningLottoNumbers, value: Array(lottoNumbers))
        print(lottoNumbers)
        lottoNumbers.removeAll()
    }
}

func checkWinningNumber(key: Int) {
    var winningLottoNumberBasket: [String] = []
    guard var winningLottoNumber : [Int] = winningLottoNumbers["\(key)회차"] else {return}
    for _ in 1...6 {
    winningLottoNumberBasket.append("\(winningLottoNumber.removeFirst())")
}
    print("\(key)회차의 로또 당첨 번호는 \(winningLottoNumberBasket.joined(separator: ", "))입니다.")
}

func makeLottoNumbers(){
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}
makeLottoNumberFiveTimes()
checkWinningNumber(key: 2)

