//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

var numberSet = Set<Int>()

func makeLottoNumber() -> Set<Int>{
    while numberSet.count < 6{
        let randomNumber = Int.random(in: 1...45)
        numberSet.insert(randomNumber)
    }
    return numberSet
}

var myLottoNumber : Set<Int> = [1, 2, 3, 4, 5, 6]

var winningNumber = numberSet.intersection(myLottoNumber)

var winningNumberString = winningNumber.map { winningNumber in
    return String(winningNumber)
}

func showResult(){
    if winningNumber.isEmpty{
        print("아쉽지만 겹치는 변호가 없습니다.")
    }else{
        print("축하합니다! 겹치는 번호는 \(winningNumberString.sorted().joined(separator: ", ")) 입니다!")
    }
}
