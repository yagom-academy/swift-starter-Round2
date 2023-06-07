//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

var lottoResult: [String: [Int]] = [String: [Int]]()

var count: Int = 0

func makeLottoNumbers() {

    var lottoNumbers: [Int] = [Int]()
    var randNum: Int
    
    repeat {
        
        randNum = Int.random(in: 1...45)

        if lottoNumbers.contains(randNum) == false {
            lottoNumbers.append(randNum)
        }
        
    } while lottoNumbers.count < 6
    
    count += 1
    recordLottoResults(turn: String(count), lottoNumbers: lottoNumbers)
    
}

func recordLottoResults(turn: String, lottoNumbers: [Int]) {
    
  lottoResult[turn] = lottoNumbers
   
}


for _ in 1...5 {
    makeLottoNumbers()
}

var turn: String
print("원하는 회차를 입력하세요: ", terminator: "")
turn = readLine() ?? ""

print("\(turn)회차의 로또 당첨 번호는 \((lottoResult[turn] ?? [0]).map {String($0)}.joined(separator: ", ")) 입니다")

