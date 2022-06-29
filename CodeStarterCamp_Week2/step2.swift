//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/06/29.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var sameNumber: [Int] = []

func makeLottoNumbers(checkCount: Int){
    while lottoNumbers.count < checkCount{
        let number: Int = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
}

func checkSameNumber(){
    for myPick in myLottoNumbers{
        for lottoPick in lottoNumbers{
            if myPick == lottoPick {
                sameNumber.append(myPick)
            }
        }
    }
    if sameNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumber.sorted()) 입니다!")
    }
}
