//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumber: Set<Int> = Set<Int> ()
var matchedLottoNumberArray: [Int] = []
var pickLottoNumberArray: [String] = []
let myChooseLottoNumber: Set<Int>! = [1, 2, 3, 4, 5, 6]

print(" 내 로또 번호는 : \(myChooseLottoNumber.sorted())")

func createRandomLottoNum() {
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
        
    }
    print("당첨된 내 로또 번호는 : \(lottoNumber.sorted())")
}

func compareLottoNum() {
    var matchNumber: Set<Int> = Set<Int>()
    matchNumber = myChooseLottoNumber.intersection(lottoNumber)
    matchedLottoNumberArray = Array(matchNumber)
}

func  changeLottoNumberArray() {
    for index in pickLottoNumberArray {
        pickLottoNumberArray.append("\(index)")
    }
}

func printMatchNum() {
    changeLottoNumberArray()
    let correctLottoArray = pickLottoNumberArray.joined(separator: " ,")
    print(correctLottoArray, terminator: " ")
}

func printMatchLottoResultMessage() {
    compareLottoNum()
    if matchedLottoNumberArray.isEmpty {

        print("아쉽지만  겹치는 번호가 없습니다  다음기회에 재 시도 해주세요")
    } else {
        print("축하합니다!! 겹치는 번호는 \(myChooseLottoNumber.sorted()) " + "입니다")
      printMatchNum()
    
    }
}
createRandomLottoNum()
printMatchLottoResultMessage()
