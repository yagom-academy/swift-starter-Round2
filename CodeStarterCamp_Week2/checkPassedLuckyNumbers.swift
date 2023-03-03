//
//  checkPassedLuckyNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by minsong kim on 2023/03/01.
//

import Foundation
    
func pickNumbers() -> Set<Int> {
    var luckyNumbers: Set<Int> = Set<Int>()
    
    while luckyNumbers.count < 6 {
        luckyNumbers.insert(Int.random(in: (1...45)))
    }
    
    return luckyNumbers
}

func saveLuckyNumbers(since: Int) -> Dictionary<String, Set<Int>> {
    var passedLuckyNumbers: Dictionary<String, Set> = [String: Set<Int>]()
    
    for count in 1...since{
        passedLuckyNumbers["\(count)회차"] = pickNumbers()
    }
    
    return (passedLuckyNumbers)
}



func getPassedLuckyNumbers(since: Int, time: Int) {

    if let numbers = saveLuckyNumbers(since: since)["\(time)회차"] {
        print("\(time)회차의 로또 당첨 번호는 ", terminator: "")
        print(numbers.map{ (number: Int) -> String in
            return String(number)
            
        }
        .joined(separator:", "), terminator: " 입니다.")
    } else {
        print("회차 정보가 없습니다.")
    }
 
}

