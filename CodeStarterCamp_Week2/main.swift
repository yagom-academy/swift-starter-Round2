//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// Array와 shuffled를 이용한 코드
func generateWinningNumbers() -> [Int] {
    let shuffledNumberPool: [Int] = Array(1...45).shuffled()
    var winningNumbers: [Int] = []

    for index in 0...5 {
        winningNumbers.append(shuffledNumberPool[index])
    }
    return winningNumbers
}

/*Set과 Int.random을 이용한 코드
func generateWinningNumbers() -> Set<Int> {
    var winningNumbers: Set<Int> = Set<Int>()
    while winningNumbers.count < 6 {
        winningNumbers.insert(Int.random(in: 1...45))
    }
    return winningNumbers
}*/

func checkOverlappingNumbers(winningNumbers: [Int], myLottoNumbers: [Int]) -> [Int] {
    var myOverlappingNumbers: [Int] = []
    
    for myLottoNumber in myLottoNumbers {
        for winningNumber in winningNumbers {
            if myLottoNumber == winningNumber {
                myOverlappingNumbers.append(myLottoNumber)
            }
        }
    }
    return myOverlappingNumbers
}

func showLottoResult(myOverlappingNumbers: [Int]) {
    if myOverlappingNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let lastIndex: Int = myOverlappingNumbers.count - 1
        
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for index in 0...lastIndex {
            if index == lastIndex {
                print("\(myOverlappingNumbers[index]) 입니다!")
            } else {
                print("\(myOverlappingNumbers[index])", terminator: ", ")
            }
        }
    }
}

func playLotto() {
    let winningNumbers = generateWinningNumbers()
    let myLottoNumbers: [Int] = winningNumbers
    let myOverlappingNumbers: [Int] = checkOverlappingNumbers(winningNumbers: winningNumbers, myLottoNumbers: myLottoNumbers)
    
    showLottoResult(myOverlappingNumbers: myOverlappingNumbers)
}

playLotto()

