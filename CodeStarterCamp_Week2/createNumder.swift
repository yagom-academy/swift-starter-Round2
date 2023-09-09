//
//  createNumder.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/09/09.
//

import Foundation
func createLottoNumder() -> Set<Int>{
    var generateLotto : Set<Int> = []

    while generateLotto.count < 6{
        let number = Int.random(in: 1...45)
        generateLotto.insert(number)
    }
    return generateLotto
}
