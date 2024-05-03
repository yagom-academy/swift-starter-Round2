//
//  main.swift
//  Step2-Lotto
//
//  Created by 이재영 on 2024/05/03.
//

import Foundation

func pickWinningNumber() -> [Int] {
    var numbers: Set<Int> = Set(1...45)
    var winningNumber: Set<Int> = []
    
    while winningNumber.count < 6 {
        winningNumber.insert(numbers.first!)
        numbers.removeFirst()
    }
    return winningNumber.sorted()
}

func convertToString(numbers: Array<Int>, separator: String = ", ") -> String {
    var str: String = ""
    for number in numbers {
        str += String(number)
        str += separator
    }
    str.removeLast(separator.count)
    return str
}

func matchLotto(myNumber: [Int], winningNumber: [Int]) {
    let myNumberSet: Set<Int> = Set(myNumber)
    
    guard myNumber.count == 6
            && Set(1...45).isSuperset(of: myNumberSet)
            && myNumber.count == myNumberSet.count else {
        print("1부터 45까지의 범위에서 중복되지 않는 6개의 숫자를 선택해주시기 바랍니다.")
        return
    }

    let winningNumberSet = Set(winningNumber)
    let winningNumberString = convertToString(numbers: winningNumber)
    
    print("당첨번호는 " + winningNumberString + "입니다.")
    
    let matchedNumber = myNumberSet.intersection(winningNumber).sorted()
   
    guard !matchedNumber.isEmpty else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }

    let matchedNumberString = convertToString(numbers: matchedNumber.sorted())
    
    print("축하합니다! 겹치는 번호는 " + matchedNumberString + " 입니다!")
}


let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let winningNumberOfLottery = pickWinningNumber()
print("=나의 번호 테스트=")
matchLotto(myNumber: myLottoNumbers, winningNumber: winningNumberOfLottery)
print()
print("=당첨번호 테스트=")
matchLotto(myNumber: winningNumberOfLottery, winningNumber: winningNumberOfLottery)
