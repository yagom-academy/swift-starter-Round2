//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var winningNumbers: Set<Int> = Set<Int>()
var duplicationNumber = [Int]()
var dictionary = [String: Any]()

func makeNumbers(){
    while(winningNumbers.count < 6){
        winningNumbers.insert(Int.random(in: 1...45))
    }
}
func checkNumbers(){
    for number in 0...5{
        if(myLottoNumbers.contains(Array(winningNumbers)[number])) == true{
            duplicationNumber.append(Array(winningNumbers)[number])
        }
    }
}
func saveWinningNumbers(round:Int){
    dictionary = ["\(round)회차": Array(winningNumbers)]
}
for round in 1...5{
    makeNumbers()
    saveWinningNumbers(round: round)
    if (round == 4){ // 원하는 회차 입력
        print("\(round)회차의 로또 당첨 번호는 \(dictionary.values)입니다")
    }
    winningNumbers.removeAll()
}
