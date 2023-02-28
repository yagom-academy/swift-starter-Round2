
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func randomNumberDraw() -> [Int] {
    var result = [Int]()
    
    while result.count < 6 {
        let randomNubers = Int.random(in: 1...45)
        if !result.contains(randomNubers) {
            result.append(randomNubers)
        }
    }
    return result.sorted()
}

func compare(myNumber: [Int]) {
    let randomNuber = randomNumberDraw()

    for selectNumbers in myNumber {
        for randomNubers in randomNuber {
            if selectNumbers == randomNubers  {
                print("축하합니다! 겹치는 번호는 \(myNumber) 입니다!")
                return
            } else {
                print("아쉽지만 겹치는 번호가 없습니다.")
                return
            }
        }
    }
}
compare(myNumber: [3, 5, 12, 22, 26, 31])
