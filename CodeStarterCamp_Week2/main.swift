//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 로또 추첨 번호를 생성하여 Set을 Return하는 함수
func createLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while(lottoNumbers.count < 6) {
        lottoNumbers.insert(Int.random(in: 1..<46))
    }
    
    return lottoNumbers
}

// 추첨 번호와 나의 번호를 비교하여 겹치는 번호를 저장한 Array를 Return하는 함수
func createSameNumbersArray(lottoNumbers: Set<Int>, myLottoNumbers: [Int]) -> Array<Int> {
    var sameNumbers: [Int] = [Int]()
    
    for num in myLottoNumbers {
        if lottoNumbers.contains(num){
            sameNumbers.append(num)
        }
    }
    
    return sameNumbers
}

// 추첨 결과를 출력하는 함수
func printLottoResult(sameNumbers: [Int]) {
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for num in sameNumbers {
            if num == sameNumbers[0] {
                print("\(num)", terminator: "")
            } else {
                print(", \(num)", terminator: "")
            }
        }
        print(" 입니다!")
    }
}

let lottoNumbers: Set<Int> = createLottoNumbers()
let myLottoNumbers: [Int] = [1,11,19,21,27,39]
var sameNumbers: [Int] = createSameNumbersArray(lottoNumbers: lottoNumbers, myLottoNumbers: myLottoNumbers)
sameNumbers = sameNumbers.sorted()

printLottoResult(sameNumbers: sameNumbers)
