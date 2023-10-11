//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: [Int] = []
myLottoNumbers = [1, 2, 3, 4, 5, 6]

checkWinningLottoNumbers(myNumbers: myLottoNumbers, winnigNumbers: makeLottoNumbers())

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let oneLottoNumber: Int = Int.random(in: 1...45)
        lottoNumbers.insert(oneLottoNumber)
    }
    
    return lottoNumbers
}

func checkWinningLottoNumbers(myNumbers: Array<Int>, winnigNumbers: Set<Int> ) {
    // Set 의 집합연산 활용을 위해 myNumbers를 Set type 변경
    let changedMyNumbers = Set(myNumbers)
    // 당첨번호와 내로또번호의 교집합 - 당첨번호 확인
    let intersectionNumbers: Set<Int> = winnigNumbers.intersection(changedMyNumbers)
    
    if intersectionNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        // 겹치는 번호에서 "[", "]" 제거 - 고차 함수
        /*
        let printIntersectionNumbers = intersectionNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(printIntersectionNumbers) 입니다!")
        */
        print("축하합니다! 겹치는 번호는", terminator: " ")
        for (i, number) in intersectionNumbers.enumerated() {
            if i < intersectionNumbers.count - 1 {
                print("\(number)", terminator: ", ")
            } else {
                print("\(number)", terminator: "")
            }
        }
        print(" 입니다!")
    }
}
