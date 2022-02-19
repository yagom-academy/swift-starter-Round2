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

    for i in 0...5 {
        winningNumbers.append(shuffledNumberPool[i])
    }
    return winningNumbers
}

// Set과 Int.random을 이용한 코드
//func generateWinningNumbers() -> Set<Int> {
//    var winningNumbers: Set<Int> = Set<Int>()
//    while winningNumbers.count < 6 {
//        winningNumbers.insert(Int.random(in: 1...45))
//    }
//    return winningNumbers
//}

func checkCorrectNubmers(winningNumbers: [Int], myLottoNumbers: [Int]) -> [Int] {
    var correctNumbers: [Int] = []
    
    for myLottoNumber in myLottoNumbers {
        for winningNumber in winningNumbers {
            if myLottoNumber == winningNumber {
                correctNumbers.append(myLottoNumber)
            }
        }
    }
    return correctNumbers
}

func showLottoResult(myCorrectNumbers: [Int]) {
    if myCorrectNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let lastIndex: Int = myCorrectNumbers.count - 1
        
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for i in 0...lastIndex {
            if i == lastIndex {
                print("\(myCorrectNumbers[i]) 입니다!")
            } else {
                print("\(myCorrectNumbers[i])", terminator: ", ")
            }
        }
    }
}

func playLotto() {
    
    let winningNumbers = generateWinningNumbers()
    let myLottoNumbers: [Int] = [4, 6, 5, 16, 34, 41]
    let myCorrectNumbers: [Int] = checkCorrectNubmers(winningNumbers: winningNumbers, myLottoNumbers: myLottoNumbers)
    
    showLottoResult(myCorrectNumbers: myCorrectNumbers)
}

playLotto()

