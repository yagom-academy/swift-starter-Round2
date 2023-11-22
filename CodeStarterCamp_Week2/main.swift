//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func lottoNumberGenerator() -> [Int] {
    var numbers = Array(1...45)
    var result = [Int]()
    
    for _ in 0..<6 {
        guard let randomNumbers = numbers.randomElement() else { continue }
        result.append(randomNumbers)
        
        guard let index = numbers.firstIndex(of: randomNumbers) else { continue }
        numbers.remove(at: index)
    }
    
    return result
}

func checkLottoNumbers(lottoNumbers: [Int]) {
    let matchedNumbers = lottoNumbers.filter { myLottoNumbers.contains($0) }
    
    guard !matchedNumbers.isEmpty else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    let joinedNumbers = matchedNumbers.map { String($0) }.joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(joinedNumbers) 입니다!")
}

let lottoNumbers = lottoNumberGenerator()
checkLottoNumbers(lottoNumbers: lottoNumbers)
