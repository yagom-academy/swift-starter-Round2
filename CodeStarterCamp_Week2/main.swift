//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//Step1의 순서도를 바탕으로 로또 당첨 번호를 생성하는 함수를 생성합니다.
var numbers: Array<Int> = Array(1...45)
var randomNumbers = numbers.shuffled()
func generateLottoNumbers(randomNumbers: Array<Int>) -> Set<Int> {
    let lottoNumbers: Set<Int> = Set(randomNumbers[0...5])
    return lottoNumbers
}

let lottoNumbers = generateLottoNumbers(randomNumbers: randomNumbers)

//내가 찍은 번호 배열을 myLottoNumbers 변수에 할당합니다.
let myLottoNumbers: Set<Int> = [5, 13, 23, 25, 37, 42]

//찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수를 생성합니다.
func checkLottoNumbers(myLottoNumbers: Set<Int>, lottoNumbers: Set<Int>) {
    let intersectSet = lottoNumbers.intersection(myLottoNumbers)
    let interection: Int = intersectSet.count
    if interection < 1 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(intersectSet) 입니다!")
    }
}

checkLottoNumbers(myLottoNumbers: myLottoNumbers, lottoNumbers: lottoNumbers)

