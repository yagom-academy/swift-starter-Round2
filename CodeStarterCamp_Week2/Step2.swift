//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 이지원 on 2023/05/23.
//

import Foundation


func getLottoNumber() -> Set<Int> {
    
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}

func compareLottoResult(to lottos: Set<Int>, from myLottos: [Int]) {
    let result = Array(lottos.intersection(myLottos)).sorted()
    if result.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for index in 0 ..< result.count - 1 {
            print(result[index], terminator: ", ")
        }
        print(result[result.count - 1], terminator: " ")
        print("입니다!")
    }
}
