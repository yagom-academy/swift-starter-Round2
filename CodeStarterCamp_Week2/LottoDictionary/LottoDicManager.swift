//
//  CollectionManager.swift
//  CodeStarterCamp_Week2
//
//  Created by 박세웅 on 2021/12/22.
//

import Foundation

func generateLottoDictionary(count: Int) ->  [String: [Int]] {
    
    var lottoDictionary: [String : [Int]] = [ : ]
    
    for i in 1...count {
        let winningNumbers: [Int] = generateWinningNumbers()
        lottoDictionary = saveWinningNumbersAtLottoDictionary(index: i, numbers: winningNumbers, dictionary: lottoDictionary)
    }
    return lottoDictionary
}

func printTargetNumbers(lottoDictionary: [String: [Int]], target: Int) {
    let targetKey: String = "\(target)회차"
    
    if let value = lottoDictionary[targetKey] {
        let numbers = convertToString(array: value)
        
        print("\(targetKey)의 로또 당첨 번호는 \(numbers) 입니다.")
        return
    }
    print("해당 회차의 당첨 번호가 없습니다.")
}

func generateWinningNumbers() -> [Int] {
    let lottoFactory = LottoFactory()
    let winningNumbers: [Int] = lottoFactory.pickWinningNumbers()
    
    return winningNumbers
}

func saveWinningNumbersAtLottoDictionary(index: Int, numbers: [Int], dictionary: [String : [Int]]) -> [String : [Int]] {
    let key: String = "\(index)회차"
    var dictionary = dictionary
    dictionary[key] = numbers
    
    return dictionary
}
