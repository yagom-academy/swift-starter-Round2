//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeLottoNumbers() -> Set<Int> {
    var numbers: Set<Int> = []
    
    while numbers.count < 6 {
        if let number = (1...45).randomElement() {
            numbers.insert(number)
        }
    }
    
    return numbers
}

func checkLottoNumbers(_ winNumbers: Set<Int>, with myNumbers: [Int]) -> String {
    
    print("당첨 번호 \(winNumbers)")
    print("내가 찍은 번호 \(myNumbers)")
    
    let failMsg = "아쉽지만 겹치는 번호가 없습니다."
    let winner = Array(winNumbers.intersection(myNumbers)).sorted()
    
    guard winner.isEmpty == false else { return failMsg }
    
    var winnerMsg = "축하합니다! 겹치는 번호는"
    for number in winner {
        winnerMsg += " \(number),"
    }
    winnerMsg.removeLast()
    winnerMsg += " 입니다!"
    
    return winnerMsg
}

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

print(checkLottoNumbers(makeLottoNumbers(), with: myLottoNumbers))


