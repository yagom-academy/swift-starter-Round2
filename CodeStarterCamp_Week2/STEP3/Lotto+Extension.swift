//
//  Lotto+Extension.swift
//  CodeStarterCamp_Week2
//
//  Created by DOYEON JEONG on 2023/08/29.
//

import Foundation

extension Lotto {
    
    func saveResults(with userSelected: [Int], history: inout [String: [Int]]) {
        
        var lottoNumbers: Set<Int> = Set(1...45)
        var results: Set<Int> = Set<Int>()
        
        repeat {
            if let randomNumber = lottoNumbers.randomElement() {
                lottoNumbers.remove(randomNumber)
                results.insert(randomNumber)
            }
        } while results.count < 6
        
        results = results.intersection(Set(userSelected))
        
        let thisRound = "\(history.count + 1)회차"
        history[thisRound] = Array(results).sorted()
        
    }
    
}
