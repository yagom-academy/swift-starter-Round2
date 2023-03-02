//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//print("선택한 로또 번호: \(myLottoNumbers)")
//let myLottoNumbers: [Int] = [13, 25, 27, 31, 34, 35]
compareLottoNumber()

//찍은 번호와 로또 당첨번호 겹치는 숫자 확인하고 출력하는 함수
func compareLottoNumber() {
    var resultLottoNumbers: [Int] = []
    var sameLottoNumbers: String = ""
    let lottoNumbers = createRandomLottoNumbers()
//    print("생성된 로또 번호: \(lottoNumbers)")

    for myLottoNum in myLottoNumbers {
        for lottoNum in lottoNumbers {
            if myLottoNum == lottoNum {
                resultLottoNumbers.append(myLottoNum)
                sameLottoNumbers += String(myLottoNum) + ", "
                
            }
        }
    }
    
    if resultLottoNumbers.count != 0 {
        print("축하합니다! 겹치는 번호는 \(sameLottoNumbers.dropLast(2)) 입니다.")
        //print("축하합니다! 겹치는 번호는 \(sameLottoNumbers) 입니다.")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
}

//로또 숫자 6개를 랜덤으로 생성하는 함수
func createRandomLottoNumbers() -> Array<Int> {
    var setLottoNumbers: Set<Int> = Set<Int>()
    while setLottoNumbers.count < 6 {
        setLottoNumbers.insert(Int.random(in: 1...45))
//        setLottoNumbers.insert(Int.random(in: 1...10))
    }
    let lottoNumbers = Array(setLottoNumbers.sorted())
    return lottoNumbers
}
