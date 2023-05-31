//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by Jack Lee on 2023/05/25.
//

import Foundation

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
var savedWinners = [String: [Int]]()

//MARK: - 함수 분해

func generateLotto() -> [Int] {
    var numberDrawn: Set<Int> = []
    
    repeat {
        let pickedNumber = Int.random(in: 1...45)
        numberDrawn.insert(pickedNumber)
    } while numberDrawn.count != myLottoNumbers.count
    
    return Array(numberDrawn)
}

func playLotto(rounds: Int) {
    for round in 1...rounds {
        let numberDrawn = generateLotto()
        saveWinners(won: round, with: numberDrawn)
    }
}

func saveWinners(won rounds: Int, with draws:[Int]) {
    savedWinners["\(rounds)"] = draws
}

func printAllWinners() {
    let sortedWinners = savedWinners.sorted(by: {$0.key < $1.key})
    for (key, value) in sortedWinners {
        let sortedValue = value.map{String($0)}.joined(separator: ", ")
        print("\(key)회차의 로또 당첨 번호는 \(sortedValue)입니다.")
    }
}

func findWinner(round: Int) {
    if let roundNumber = savedWinners["\(round)"] {
        let numberDrawn = roundNumber.map{String($0)}.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(numberDrawn)입니다.")
    }
}
