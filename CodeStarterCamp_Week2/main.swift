//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//let myLottoNumbers: [Int] = [13, 25, 27, 31, 34, 35]
var resultLottoNumbers: [Int] = []

createRandomLottoNumbers()
//print("생성된 로또 번호: \(lottoNumbers)")
//print("선택한 로또 번호: \(myLottoNumbers)")
compareLottoNumber()

//찍은 번호와 로또 당첨번호 겹치는 숫자 확인 함수
func compareLottoNumber() {
    let lottoNumbers = Array(lottoNumbers.sorted())
//    print("정렬된 로또 번호: \(lottoNumbers)")
    
    for a in 0...5 {
        for b in 0...5 {
            if myLottoNumbers[a] == lottoNumbers[b] {
                resultLottoNumbers.append(myLottoNumbers[a])
            }
        }
    }
    
    if resultLottoNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for a in 0...resultLottoNumbers.count - 1 {
            print("\(resultLottoNumbers[a])", terminator: "")
            if a != resultLottoNumbers.count - 1 {
                print(", ", terminator: "")
            }
        }
        print(" 입니다.")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
}

    
//로또 숫자 6개를 랜덤으로 생성하는 함수
func createRandomLottoNumbers() -> Set<Int> {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
//        lottoNumbers.insert(Int.random(in: 1...10))
    }
    return lottoNumbers
}

