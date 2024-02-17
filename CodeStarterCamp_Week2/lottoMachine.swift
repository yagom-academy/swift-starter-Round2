//
//  lottoMachine.swift
//  CodeStarterCamp_Week2
//
//  Created by 이지은 on 2/17/24.
//

func makeLottoNumbers() -> Set<Int> {
    
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count != 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}
