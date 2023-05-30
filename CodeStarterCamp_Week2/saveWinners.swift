//
//  saveLotto.swift
//  CodeStarterCamp_Week2
//
//  Created by Jack Lee on 2023/05/27.
//

import Foundation

func saveWinners(andFind previousDraws: Int?) {
    var saveWinners = [Int: [Int]]()
    guard let previousDraws = previousDraws else { return }
    
    for draw in 1...previousDraws {
        let numberDrawn = generateLotto()
        let numberArray = Array<Int>(numberDrawn)
        saveWinners[draw] = numberArray
        
        if let numbers = saveWinners[draw] {
            let numberString = numbers.map{ String($0) }.joined(separator: ", ")
            print("\(draw)회차의 로또 당첨 번호는 \(numberString)입니다.")
        }
    }
}
