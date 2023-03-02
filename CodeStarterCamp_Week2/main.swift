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

func comparisonLottoNumbers(my number : [Int]) -> (matchingResult : Set<Int>, lottoNumber : Set<Int>) {
    let lottoNumber = createLottoNumbers()
    var matchingNumbers = Set<Int>()
    
    if number.count == 6 {
        matchingNumbers = Set<Int>(number).intersection(lottoNumber)
    } else {
        matchingNumbers = [0] // matchingNumbers 변수에 멤버가 아예 없으면 로또번호와 일치하는 번호가 없다는 뜻으로도 해석됨으로 1~45사이의 값이 아닌 0을 넣어 반환하게함.
    }
    
    return (matchingNumbers, lottoNumber)
}

func showLottoNumbersResult(my number : [Int]) {
    let outputNumbers = comparisonLottoNumbers(my: number)
    
    if outputNumbers.matchingResult.contains(0) {
        print("로또번호는 6개 입니다. 다시 입력해주세요")
    } else {
        print("이번주의 당첨번호는 \(outputNumbers.lottoNumber.sorted())입니다")
        
        if outputNumbers.matchingResult.isEmpty {
            print("아쉽지만 겹치는 번호가 없습니다.")
        } else {
            print("축하합니다! 겹치는 번호는 \(outputNumbers.matchingResult.sorted())입니다!")
        }
    }
}

showLottoNumbersResult(my: myLottoNumbers)
