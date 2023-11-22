//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var round = 1
var lotto: [String: Set<Int>] = [:]

@discardableResult
func generateLottoNumber() -> Set<Int> {
    var result = Set<Int>()
    
    while result.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        result.insert(randomNumber)
    }
    
    lotto["\(round)회차"] = result
    round += 1
    
    return result
}

func checkLottoNumbers(lottoNumbers: Set<Int>) {
    let matchedNumbers = lottoNumbers.filter { myLottoNumbers.contains($0) }
    
    guard !matchedNumbers.isEmpty else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    let joinedNumbers = matchedNumbers.toString
    print("축하합니다! 겹치는 번호는 \(joinedNumbers) 입니다!")
}

func printLottoNumbers() {
    guard let input = readLine(),
          let round = Int(input),
          let numbers = lotto["\(round)회차"] else {
        print("잘못 입력하셨거나 없는 회차를 입력했습니다.")
        return
    }
    
    let joinedNumbers = numbers.toString
    print("\(round)회차의 로또 당첨 번호는 \(joinedNumbers) 입니다.")
}

for _ in 0..<5 {
    generateLottoNumber()
}
printLottoNumbers()

extension Set where Element == Int {
    var toString: String {
        self.map { String($0) }.joined(separator: ", ")
    }
}
