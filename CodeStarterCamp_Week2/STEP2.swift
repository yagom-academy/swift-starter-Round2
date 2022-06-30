//
//  STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by 한겨레 on 2022/06/29.
//

import Foundation

//로또 번호 추첨
func makeLottoNumbers() -> Set<Int> {
    
    var lottoNumbers: Set<Int> = Set<Int>()

    while lottoNumbers.count<6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

//로또 당첨 여부 조회
func compareLottoNumbers() {
    let myLottoNumbers: [Int] = [1,3,4,5,34,31]
    
    var sameLottoNumbers: Set<Int> = makeLottoNumbers().intersection(myLottoNumbers)
  
    if sameLottoNumbers.isEmpty {
        
        print("아쉽지만 겹치는 번호가 없습니다.")
        
    }
    else {
        let resultNumber = sameLottoNumbers.map{String($0)}.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(resultNumber) 입니다!")
        
    }
    
}
