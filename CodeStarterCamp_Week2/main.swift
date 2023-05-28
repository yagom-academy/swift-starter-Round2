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

while(winningNumbers.count < 6){
    winningNumbers.insert(Int.random(in: 1...45))
}
func checkNumbers(){
    //myLottoNumbers 겹치는 번호 비교 winningNumbers
    for number in 0...5{
        if(myLottoNumbers.contains(Array(winningNumbers)[number])) == true{
            duplicationNumber.append(Array(winningNumbers)[number])
        }
    }
}
checkNumbers()
if duplicationNumber.isEmpty == true{
    print("아쉽지만 겹치는 번호가 없습니다.")
}
else{
    print(duplicationNumber.sorted())
}
