//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 박신영 on 2023/07/27.
//

import Foundation

// MARK: - 로또 번호 생성 함수
func makeLottoNumbers() -> Set<Int>{
    var lottoNumbers: Set<Int> = []

    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

// MARK: - 내 번호와 로또 당첨번호 맞추는 함수
func saveCorrectNumber(winnerNumbers: [Int]) -> [Int] {

    var correct = [Int]()

    for number in winnerNumbers {
        if myLottoNumbers.contains(number) {
            correct.append(number)
        }
    }
    return correct
}


func correctNumberReturner() {
    let winnerNumbers = Array(makeLottoNumbers())
    let correctNumbers = saveCorrectNumber(winnerNumbers: winnerNumbers)

    if correctNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 ",terminator: "")
        for num in correctNumbers {
            if num != correctNumbers[correctNumbers.count-1] {
                print(num, terminator: ", ")
            }
            else {
                print(num, terminator: " 입니다!\n")
            }
        }
    }
}


let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
correctNumberReturner()




