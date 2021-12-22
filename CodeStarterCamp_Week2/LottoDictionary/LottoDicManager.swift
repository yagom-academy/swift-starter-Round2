//
//  CollectionManager.swift
//  CodeStarterCamp_Week2
//
//  Created by 박세웅 on 2021/12/22.
//

import Foundation

func execute(count: Int, target: Int) {
    let lottoDictionary: [String : [Int]] = saveLottoWinningNumbers(count: count)
    printTargetNumbers(lottoDictionary: lottoDictionary, target: target)
}

func saveLottoWinningNumbers(count: Int) ->  [String: [Int]] {
    let lottoFactory = LottoFactory()
    var lottoDictionary: [String : [Int]] = [ : ]
    
    for i in 1...count {
        let winningNumbers: [Int] = lottoFactory.lottoPicker()
        let key: String = "\(i)회차"
        
        lottoDictionary[key] = winningNumbers
    }
    return lottoDictionary
}

func printTargetNumbers(lottoDictionary: [String: [Int]], target: Int) {
    let targetKey: String = "\(target)회차"
    
    if let value = lottoDictionary[targetKey] {
        let convertedArray: [String] = value.map{ String($0) }
        let joinedNumbers: String = convertedArray.joined(separator: ", ")
        print("\(targetKey)의 로또 당첨 번호는 \(joinedNumbers) 입니다.")
        return
    }
    print("해당 회차의 당첨 번호가 없습니다.")
}
