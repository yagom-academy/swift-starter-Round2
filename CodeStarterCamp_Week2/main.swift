//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func createLottoNumbers() -> Set<Int>{
    var number : Set<Int> = Set<Int>()
    
    while number.count <= 5 {
        number.insert(Int.random(in: 1...45))
    }
    
    return number
}

func checkLottoNumbers(my number : [Int]) -> (matchingResult : Set<Int>, lottoNumber : Set<Int>) {
    let lottoNumber = createLottoNumbers()
    var matchingNumbers = Set<Int>()
    
    if number.count == 6 {
        matchingNumbers = Set<Int>(number).intersection(lottoNumber)
    } else {
        matchingNumbers = [0]
    }
    
    return (matchingNumbers, lottoNumber)
}

func writeLottoNumbersResult(my number : [Int]) {
    let outputNumbers = checkLottoNumbers(my: number)
    
    if outputNumbers.matchingResult.contains(0) {
        print("로또번호는 6개 입니다. 다시 입력해주세요")
    } else if outputNumbers.matchingResult.isEmpty {
        print("이번주의 당첨번호는 \(outputNumbers.lottoNumber.sorted())입니다")
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("이번주의 당첨번호는 \(outputNumbers.lottoNumber.sorted())입니다")
        print("축하합니다! 겹치는 번호는 \(outputNumbers.matchingResult.sorted())입니다!")
    }
}

writeLottoNumbersResult(my: myLottoNumbers)
