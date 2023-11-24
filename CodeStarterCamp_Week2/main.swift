//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


// 나의 로또 번호
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]


// 로또 생성 함수
func createLottoNumber() -> Set<Int> {
    var createLottoNumber: Set<Int> = Set<Int>()
    
    while createLottoNumber.count < 6 {
        createLottoNumber.insert(Int.random(in: 1...45))
    }
    
    return createLottoNumber
    
    
}

// 나의 로또 번호랑 생성된 로또번호 비교 함수
func compareLottoNumber(){
    var resultLottoNumber: Array<Int> = Array<Int>()
    var lottoNumber: String = ""
    let createLotto = createLottoNumber()
    
    for number in myLottoNumbers{
        if createLotto.contains(number){
            resultLottoNumber.append(number)
        }
    }
    
    guard !resultLottoNumber.isEmpty else{
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    
    for number in resultLottoNumber{
        lottoNumber.append("\(number),")
    }

    lottoNumber.removeLast()
    print("축하합니다.! 겹치는 번호는 \(lottoNumber) 입니다!")
    
}

compareLottoNumber()
