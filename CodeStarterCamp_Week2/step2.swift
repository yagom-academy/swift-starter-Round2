//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/06/29.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()

func makeLottoNumbers(count: Int) {
    while lottoNumbers.count < count {
        let number: Int = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
    insertHistory()
}

func checkSameNumber() {
    var sameNumbers: [String] = []
    let myLottoNumbers: [Int] = [1,2,3,4,5,6]
    
    for myLottoNumber in myLottoNumbers {
        for lottoNumber in lottoNumbers {
            if myLottoNumber == Int(lottoNumber) {
                sameNumbers.append(String(myLottoNumber))
            }
        }
    }
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        print("축하합니다! 겹치는 번호는 \(sameNumbers.joined(separator: ", ")) 입니다!")
    }
}
