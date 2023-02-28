//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count <= 6 {
        lottoNumbers.insert(Int.random(in: (1...45)))
    }
    
    return lottoNumbers
}

func drawLotto(myLottoNumbers: [Int]) {
    let lottoNumbers: Set<Int> = generateLottoNumbers()
    let matchedLottoNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    
    // for문을 이용한 겹치는 번호 목록
    /*
    var matchedLottoNumbers: [Int] = []

    for lottoNumber in lottoNumbers {
        if myLottoNumbers.contains(lottoNumber) {
            matchedLottoNumbers.append(lottoNumber)
        }
    }
     */
    
    printLottoResult(matchedLottoNumbers: matchedLottoNumbers)
}

func printLottoResult(matchedLottoNumbers: Set<Int>) {
    if matchedLottoNumbers.count > 0 {
        let matchNumbersString = matchedLottoNumbers
            .sorted()
            // .map{ (number) -> String in return String(number) }
            // .map{ (number) -> String in String(number) }
            .map{ String($0) }
            .joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchNumbersString) 입니다!")
        
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
drawLotto(myLottoNumbers: myLottoNumbers)
