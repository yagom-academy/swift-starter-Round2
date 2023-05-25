//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by Jack Lee on 2023/05/25.
//

import Foundation

let myLottoNumbers: Set = [1, 2, 3, 4, 5, 6]
var numberDrawn: Set<Int> = []

// 로또번호 생성 함수
func lottoNumberGenerator() {
    repeat {
        let pickedNumber = Int.random(in: 1...45)
        
        if numberDrawn.contains(pickedNumber) {
            continue
        } else {
            numberDrawn.insert(pickedNumber)
        }
    } while numberDrawn.count != myLottoNumbers.count
    print("뽑은 번호는 \(numberDrawn.map{String($0)}.joined(separator: ", ")) 입니다")
}

// 겹치는 로또번호 확인 함수
func lottoWinnerChecker() {
    let matchingNumbers = myLottoNumbers.intersection(numberDrawn)
    if matchingNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers.sorted().map{String($0)}.joined(separator: ", ")) 입니다!")
    }
}

