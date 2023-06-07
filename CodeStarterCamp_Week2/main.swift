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

func makeLottoNumbers() -> [Int] {

    var lottoNumbers: [Int] = [Int]()
    var randNum: Int
    
    repeat {
        
        randNum = Int.random(in: 1...45)

        if lottoNumbers.contains(randNum) == false {
            lottoNumbers.append(randNum)
        }
        
    } while lottoNumbers.count < 6
    
    return lottoNumbers
}


func compareLotto(myLotto: [Int], Lotto: [Int]) {
    
    var resultNumbers: [Int] = [Int]()
    
    for numbers in Lotto {
        if myLotto.contains(numbers) {
            resultNumbers.append(numbers)
        }
    }
    
    if resultNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(resultNumbers.map {String($0)}.joined(separator: ", ")) 입니다!")
    }
    
}

func recordLottoResults(turn: String, lottoNumbers: [Int]) {
    
    lottoResult[turn] = lottoNumbers
    
}

func printLottoResult(turn: String, lottoResults: [String:[Int]]) {
    
    if lottoResult[turn] == nil {
        print("회차 정보가 없습니다.")
    } else {
        print("\(turn)회차의 로또 당첨 번호는", terminator: " ")
        print("\((lottoResult[turn] ?? [0]).map {String($0)}.joined(separator: ", ")) 입니다")
    }
    
}

for _ in 1...5 {
    count += 1
    recordLottoResults(turn: String(count), lottoNumbers: makeLottoNumbers())
}

let turn: String
print("원하는 회차를 입력하세요: ", terminator: "")
turn = readLine() ?? ""
printLottoResult(turn: turn, lottoResults: lottoResult)
