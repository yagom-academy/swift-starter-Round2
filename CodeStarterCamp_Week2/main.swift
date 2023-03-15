//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func getlotto() -> Set<Int>{

    var lotto: Set<Int> = Set<Int>()

    repeat {
        lotto = Set<Int>()

        for _ in 1...6 {
            lotto.insert(Int.random(in: (1...45)))
        }

    } while (lotto.count < 6)

    return lotto

}



func printLottoResult() {
    
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
   
    var lottoNumber: Set<Int> = Set<Int> (myLottoNumbers)
    
    let lottoIntersection: Set<Int> = lottoNumber.intersection(getlotto())
    
    if lottoIntersection.count > 0 {
        print("축하합니다! 겹치는 번호는 \(lottoIntersection) 입니다")
    } else if lottoIntersection.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다")
        
    }
    
}

printLottoResult()
