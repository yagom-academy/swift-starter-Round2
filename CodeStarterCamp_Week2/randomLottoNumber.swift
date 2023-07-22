//
//  randomLottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by 홍성준 on 2023/07/21.
//

import Foundation

// 로또 당첨 번호를 생성하는 함수
func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    var lottoNumber: Int
    while lottoNumbers.count < 6 {
        lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
    }
    return lottoNumbers
}

// 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func checkLottoNumbers(myNumbers: [Int], lottoNumbers: Set<Int>) -> Void {
    //Set의 집합연산을 활용하여 같은 번호를 골라줍니다.
    //let correctNumbers: Set<Int> = lottoNumbers.intersection(myNumbers)
    
    var correctNumbers: Array<Int> = []
    
    for myNumber in myNumbers {
        if lottoNumbers.contains(myNumber) {
            correctNumbers.append(myNumber)
        }
    }
    
    // 겹치는 숫자들 문자열로
    let overlapNumbers: String = correctNumbers.map {String($0)}.joined(separator: ", ")
    
    if correctNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 \(overlapNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}





