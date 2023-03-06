//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func setIntToString(setInt: Set<Int>) -> String {
    let setInt = setInt
    let setString = setInt.map {String($0)}
    let string = setString.joined(separator: ", ")
    
    return string
}

func makeRandomSet(setLength: Int) -> Set<Int> {
    var randomSet = Set<Int>()
    
    while (randomSet.count < setLength) {
        randomSet.insert(Int.random(in: 1...45))
    }
    
    return randomSet
}

func checkLotto(myNumbers: Int...) {
    let lottoNumbers = makeRandomSet(setLength: 6)
    let myNumbers = myNumbers
    
    var correctNumbersSet = Set<Int>() //로또와 비교해 맞힌 숫자를 저장할 Set 선언
    
    for myNumber in myNumbers {
        if lottoNumbers.contains(myNumber) {
            correctNumbersSet.insert(myNumber)
        }
    }
    
    let correctNumbersString = setIntToString(setInt: correctNumbersSet)
    
    if correctNumbersSet.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(correctNumbersString, terminator: "")
        print(" 입니다!")
    }
}

checkLotto(myNumbers: 1,2,3,4,5,6)
