//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers = [1, 2, 3, 4, 5, 6]      //선택 번호 생성
var randomNums = Set<Int>()
var correctNums = [Int]()
var countRound : Int = 0
var dataLottos = [Int : Set<Int>]()  // 회차 입력할 딕셔너리 생성

func makeNumbers() {
    while randomNums.count <= 6 {
        randomNums.insert(Int.random(in: 1...45))
    }
}

func checkNumber() {
    makeNumbers()
    for searchNum in myLottoNumbers {
        if randomNums.contains(searchNum) {
            correctNums.append(searchNum)
        }
    }
    countRound += 1 //매 회차 시 카운트up
}

func runLotto() {
    checkNumber()
    if correctNums.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(correctNums) 입니다!")
    }
    saveLottoNumbers()
    correctNums = []
    randomNums = Set<Int>()
}

func saveLottoNumbers() {
    dataLottos[countRound] = randomNums
}

for _ in 1...5 {
    runLotto()
}

if let lottoNum = dataLottos[2] {
    var printLotto = ""
    for elementLotto in Array(lottoNum).sorted() {
         printLotto += "\(elementLotto) "
    }
    print("2회차의 로또 당첨 번호는 \(printLotto)입니다.")
}
