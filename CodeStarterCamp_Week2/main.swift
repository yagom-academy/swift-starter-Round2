//
//  main5.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/31.

import Foundation

let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumber: Set<Int> = []
let LottoRound = 5 // 로또 당첨 번호 5번 생성

createLottoNumder()

var lottoResults: [Int: Set<Int>] = [:] // 각 회차의 로또 당첨 번호를 저장할 Dictionary

// 로또 당첨 번호 5번 생성

    for round in 1...5 {
        let LottoNumber = createLottoNumder()
        lottoResults[round] = LottoNumber

    print("\(round)회차의 로또 당첨 번호는 \(LottoNumber) 입니다.")
    }

    let desiredRound = 2 // 원하는 회차 설정 (여기서는 2회차 입니다)
    if let desiredLotto = lottoResults[desiredRound]{
        print("\(desiredRound)회차의 로또 당첨 번호는 \(desiredLotto) 입니다.")
    } else {
        print("\(desiredRound)회차의 로또 당첨 번호를 찾을 수 없습니다.")
    }




