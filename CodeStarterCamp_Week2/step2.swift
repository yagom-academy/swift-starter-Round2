//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/06/29.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

func makeLottoNumbers(count: Int){
    while lottoNumbers.count < count{
        let number: Int = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
}

func checkSameNumber(){
    let myLottoNumbers: [Int] = [1,2,3,4,5,6]
    var sameNumbers: [Int] = []
    for myLottoNumber in myLottoNumbers{
        for lottoNumber in lottoNumbers{
            if myLottoNumber == lottoNumber {
                sameNumbers.append(myLottoNumber)
            }
        }
    }
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        let stringNumbers: [String] = sameNumbers.map(String.init)
        print("축하합니다! 겹치는 번호는 \(stringNumbers.joined(separator: "")) 입니다!")
    }
}
