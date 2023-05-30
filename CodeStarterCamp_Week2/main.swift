//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 10, 20, 40, 25, 30]
var winningNumbers: Set<Int> = Set<Int>()
var duplicationNumber = [Int]()

func makeLottoNumbers() -> Set<Int>{
    while(winningNumbers.count < 6){
        winningNumbers.insert(Int.random(in: 1...45))
    }
    return winningNumbers
}
func checkNumbers() -> Set<Int>{
    //myLottoNumbers 겹치는 번호 비교 winningNumbers
    for number in 0...5{
        if(myLottoNumbers.contains(Array(makeLottoNumbers())[number])) == true{
            duplicationNumber.append(Array(makeLottoNumbers())[number])
        }
    }
    return Set(duplicationNumber)
}
if checkNumbers().isEmpty == true{
    print("아쉽지만 겹치는 번호가 없습니다.")
}
else{
    print("축하합니다! 겹치는 번호는", checkNumbers().map{String($0)}.joined(separator:", "), "입니다!")
}
