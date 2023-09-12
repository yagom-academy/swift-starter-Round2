//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 이승연 on 2023/09/05.
//

import Foundation

var result : Set<Int> = []
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> Set<Int> {
    
    while result.count < 6 {
        result.insert(Int.random(in: 1...45))
    }
    return result
    //print("로또 번호 : \(result)" )
    //print("나의 로또 번호 : \(myLottoNumbers)" )
}

func checkLottoNumbers() {
    let lottoIntersection: Set<Int> = result.intersection(myLottoNumbers)

    if(lottoIntersection.count == 0) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for number in lottoIntersection {
            print(number,terminator: ",")
        }
        print("입니다!")
    }
}
