//
//  checkPassedLuckyNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by minsong kim on 2023/03/01.
//

import Foundation
var passedLuckyNumbers: Dictionary<String, Set> = [String: Set<Int>]()

func saveLuckyNumbers(time: Int) {
    for count in 1...time {
        pickNumbers()
        passedLuckyNumbers["\(count)회차"] = luckyNumbers
    }
}

func getPassedLuckyNumbers(time: Int) {
    if let numbers = passedLuckyNumbers["\(time)회차"] {
        print("\(time)회차의 로또 당첨 번호는 ", terminator: "")
        print(numbers.map{ (number: Int) -> String in return String(number)}.joined(separator:", "), terminator: " 입니다.")
    } else {
        print("회차 정보가 없습니다.")
    }
}
