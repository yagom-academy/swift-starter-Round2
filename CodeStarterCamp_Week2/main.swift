//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// step2
func makeLotto() -> [Int] {
    var randomLotto: [Int] = []
    
    while randomLotto.count != 6 {
        var randomNumber = Int.random(in: 1...45)
        if randomLotto.contains(randomNumber) {
            continue
        } else {
            randomLotto.append(randomNumber)
        }
    }
    
    return randomLotto
}

func checkLotto(myLotto: [Int], prizeLotto: [Int]) {
    var duplicateNumbers: [Int] = []
    
    for myLottoNumber in myLotto {
        if prizeLotto.contains(myLottoNumber) {
            duplicateNumbers.append(myLottoNumber)
        }
    }
    
    if duplicateNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(duplicateNumbers.map { String($0) }.joined(separator: ", ")) 입니다!")
    }
}

var myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//checkLotto(myLotto: myLottoNumbers, prizeLotto: makeLotto())

/// step3
var lottoDictionary: [Int: [Int]] = [:]

func makeDictionary() {
    for _ in 0..<5 {
        lottoDictionary.updateValue(makeLotto(), forKey: lottoDictionary.count + 1)
    }
}

func checkLottoSession() {
    print("원하는 회차의 숫자를 입력해주세요. (1~5)")
    var inputString = readLine()
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

makeDictionary()
checkLottoSession()
