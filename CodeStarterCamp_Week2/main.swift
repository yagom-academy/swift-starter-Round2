//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]      //선택 번호 생성

var randomNums : Set<Int> = Set<Int>()

//랜덤 숫자 생성 후 randomNums에 숫자 입력
func makingNumbers() {
    while randomNums.count <= 6 {
        randomNums.insert(Int.random(in: 1...45))
    }
}

//번호 확인
func checkingNumber() {
    var correctNums : [Int] = [Int]()
    makingNumbers()
    
    for i in myLottoNumbers {
        if randomNums.contains(i) {
            correctNums.append(i)
        }
    }
}

