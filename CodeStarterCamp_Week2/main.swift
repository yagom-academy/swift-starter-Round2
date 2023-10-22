//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
       let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    
    return lottoNumbers
}

func checkLottoNumbers() {
    let myLottoNumbers: [Int] = [13, 22, 29, 37, 40, 44]
    let winningLottoNumbers = makeLottoNumbers()
    let resultMyLottoNumbers = Set(myLottoNumbers).intersection(winningLottoNumbers).map { String($0) }.joined(separator:", ")
    
    if resultMyLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(resultMyLottoNumbers) 입니다!")
        }
    }

checkLottoNumbers()
