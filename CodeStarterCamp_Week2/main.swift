//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// session 2
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let prizeLottoNumbers: [Int] = makeLotto()

func makeLotto() -> [Int] {
    var randomLotto: [Int] = []

    while randomLotto.count != 6 {
        let randomNumber = Int.random(in: 1...45)
        if randomLotto.contains(randomNumber) {
            continue
        } else {
            randomLotto.append(randomNumber)
        }
    }

    return randomLotto
}

func checkLotto(myLotto: [Int], prizeLotto: [Int]) -> [Int] {
    var duplicateNumbers: [Int] = []

    for myLottoNumber in myLotto {
        if prizeLotto.contains(myLottoNumber) {
            duplicateNumbers.append(myLottoNumber)
        }
    }
    
    return duplicateNumbers
}

func showResult(duplicateNumbers: [Int]) {
    if duplicateNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(duplicateNumbers.map { String($0) }.joined(separator: ", ")) 입니다!")
    }
}

/// step3
let lottoDictionary: [Int: [Int]] = makeLottoDictionary()

func makeLottoDictionary() -> [Int: [Int]] {
    var lottoDictionary: [Int: [Int]] = [:]
    
    for _ in 0..<5 {
        lottoDictionary.updateValue(makeLotto(), forKey: lottoDictionary.count + 1)
    }
    
    return lottoDictionary
}

func checkLottoSession() {
    print("원하는 회차의 숫자를 입력해주세요. (1~5)")
    
    let inputString = readLine()
    if let validInputString = inputString {
        if let validInputInt = Int(validInputString) {
            if let prizeLotto = lottoDictionary[validInputInt] {
                print("\(validInputInt)회차의 로또 당첨 번호는 \(prizeLotto.map { String($0) }.joined(separator: ", ")) 입니다!")
            } else {
                print("입력된 회차는 존재하지 않습니다.")
            }
        } else {
            print("올바른 값을 입력해주세요.")
        }
    } else {
        print("올바른 값을 입력해주세요.")
    }
}

/// 메인 함수
func run() {
    print("몇 번째 step을 진행하시겠습니까? (2 혹은 3)")
    
    if let answer = readLine(), let answerInt = Int(answer), answerInt == 2 || answerInt == 3 {
        if answerInt == 2 {
            showResult(duplicateNumbers: checkLotto(myLotto: myLottoNumbers, prizeLotto: prizeLottoNumbers))
        } else {
            checkLottoSession()
        }
    } else {
        print("잘못된 입력입니다.")
    }
}

/// 실행
run()
