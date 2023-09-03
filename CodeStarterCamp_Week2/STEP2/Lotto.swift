//
//  Lotto.swift
//  CodeStarterCamp_Week2
//
//  Created by DOYEON JEONG on 2023/08/29.
//

import Foundation

final class Lotto {
    
    func start(with userSelected: [Int]) {
        
        var lottoNumbers: Set<Int> = Set(1...45)
        var results: Set<Int> = Set<Int>()
        
        repeat {
            guard let randomNumber = lottoNumbers.randomElement() else { return }
            
            lottoNumbers.remove(randomNumber)
            results.insert(randomNumber)
            
        } while results.count < 6
        
        results = results.intersection(Set(userSelected))
        
        printResult(Array(results).sorted())
    }
    
    private func printResult(_ numbers: [Int]) {
        
        if numbers.count != 0 {
            print("축하합니다! 겹치는 번호는", terminator: " ")
            for index in 0..<numbers.count {
                let suffix = index == numbers.count - 1 ? " " : ", "
                print("\(numbers[index])\(suffix)", terminator: "")
            }
            print("입니다!")
            
        } else {
            print("아쉽지만 겹치는 번호가 없습니다.")
        }
    }
}
