//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func generateLottoNumbers() -> Set<Int> {
    var randomIntegers: Set<Int> = Set<Int>()
    
    repeat {
        let randomInteger: Int = Int.random(in: 1..<46)
        randomIntegers.insert(randomInteger)
    } while randomIntegers.count < 6
    
    return randomIntegers
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
let lottoIntersection: Set<Int> = myLottoNumbers.intersection(generateLottoNumbers())


if lottoIntersection.count != 0 {
    print("축하합니다! 겹치는 번호는 \(lottoIntersection)입니다!")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
