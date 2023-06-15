//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

<<<<<<< Updated upstream
var lottoNumbers = [Int : Set<Int>]()
func makeLottoNumbers() {
    var winngNumbers = Set<Int>()
    for round in 1...5{
        while (winngNumbers.count < 6) {
            winngNumbers.insert(Int.random(in: 1...45))
=======
let myLottoNumbers: [Int] = [1, 10, 20, 40, 25, 30]
var winningNumbers: Set<Int> = Set<Int>()
var duplicationNumbers = [Int]()

func makeLottoNumbers() -> Set<Int>{
    while(winningNumbers.count < 6){
        winningNumbers.insert(Int.random(in: 1...45))
    }
    return winningNumbers
}
func comparingOverlapingNumbers() -> Set<Int>{
    //myLottoNumbers 겹치는 번호 비교 winningNumbers
    for number in 0...5{
        if(myLottoNumbers.contains(Array(makeLottoNumbers())[number])) == true{
            duplicationNumbers.append(Array(makeLottoNumbers())[number])
>>>>>>> Stashed changes
        }
        lottoNumbers[round] = winngNumbers
        winngNumbers.removeAll()
    }
<<<<<<< Updated upstream
}
makeLottoNumbers()
let round = 3
if let ChekingOptional = lottoNumbers[round] {
    print("\(round)회차의 로또 당첨 번호는 \(ChekingOptional.map{String($0)}.joined(separator:", ")) 입니다.")
} else {
    print("no value")
=======
    return Set(duplicationNumbers)
}
if comparingOverlapingNumbers().isEmpty{
    print("아쉽지만 겹치는 번호가 없습니다.")
}
else{
    print("축하합니다! 겹치는 번호는", comparingOverlapingNumbers().map{String($0)}.joined(separator:", "), "입니다!")
>>>>>>> Stashed changes
}
