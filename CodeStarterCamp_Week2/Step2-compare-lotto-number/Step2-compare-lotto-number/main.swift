//
//  main.swift
//  Step2-compare-lotto-number
//
//  Created by 이재영 on 2024/05/03.
//

import Foundation

func pickLotto() -> [Int] {
    var numberOfLotto: Set<Int> = []
    for number in 1...45 {
        numberOfLotto.insert(number)
    }
    var numberOfWin: [Int] = []
    
    for _ in 1...6 {
        let number = numberOfLotto.first ?? 0
        numberOfWin.append(number)
        numberOfLotto.remove(number)
    }
    
    return numberOfWin
}


func matchLotto(myNumber: [Int]) {
    let winlottoNumber = pickLotto()
    let myLottoNumbers: Set<Int> = Set(myNumber)
    let matchedNumber = myLottoNumbers.intersection(winlottoNumber).sorted()
    
    if matchedNumber.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        var matchedNumberString: String = ""
        for i in 0...matchedNumber.count-1 {
            matchedNumberString += String(matchedNumber[i])
            matchedNumberString += ", "
        }
        matchedNumberString.removeLast(2)
        
        print("축하합니다! 겹치는 번호는 " + matchedNumberString + " 입니다!")
    }
}

matchLotto(myNumber: [23, 4, 14, 5, 16, 23])
