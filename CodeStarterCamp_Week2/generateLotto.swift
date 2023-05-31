//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by Jack Lee on 2023/05/25.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var savedWinners = [String: [Int]]()
var currentRound: Int = 1

//MARK: - 함수 분해
// 기존 함수는...
// 1. 로또 반복 뽑기
// 2. 뽑은 로또 저장
// 3. 당첨자 출력

func generateLotto() -> [Int] {
    var numberDrawn: Set<Int> = []
    
    repeat {
        let pickedNumber = Int.random(in: 1...45)
        numberDrawn.insert(pickedNumber)
    } while numberDrawn.count != myLottoNumbers.count
    
    return Array(numberDrawn)
}

func playLotto(rounds: Int?) {
    guard let rounds = rounds else { return }
    
    for _ in 1...rounds {
        let numberDrawn = generateLotto()
        let numberArray = Array<Int>(numberDrawn)
        saveWinners(rounds: numberArray)
        currentRound += 1
    }
}

func saveWinners(rounds: [Int]) {
    savedWinners["\(currentRound)"] = rounds
}

func printWinners() {
    for (rounds, draws) in savedWinners {
        let drawCount = draws.map{String($0)}.joined(separator: ", ")
        print("\(rounds) 회차의 로또 당첨 번호는 \(drawCount)입니다.")
    }
}
