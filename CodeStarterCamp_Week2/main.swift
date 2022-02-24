//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateWinningNumbers() -> [Int] {
    let shuffledNumberPool: [Int] = Array(1...45).shuffled()
    var winningNumbers: [Int] = []

    for index in 0...5 {
        winningNumbers.append(shuffledNumberPool[index])
    }
    return winningNumbers
}

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
    let myLottoNumbers: [Int] = [4, 5, 10, 14, 6, 7]
    let myOverlappingNumbers: [Int] = checkOverlappingNumbers(winningNumbers: winningNumbers, myLottoNumbers: myLottoNumbers)
    
    showLottoResult(myOverlappingNumbers: myOverlappingNumbers)
}

playLotto()

