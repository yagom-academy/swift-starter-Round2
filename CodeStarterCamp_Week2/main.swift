//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func random() -> [Int] {
    var result = [Int]()
    
    while result.count < 6 {
        let a = Int.random(in: 1...45)
        if !result.contains(a) {
            result.append(a)
        }
    }
    return result.sorted(by: <)
}

let mynumbers: [Int] = [3, 5, 12, 22, 26, 31]

func compare() {
    for i in mynumbers {
        for j in random() {
            if i == j {
                print("축하합니다! 겹치는 번호는 \(mynumbers) 입니다!")
            } else {
                print("아쉽지만 겹치는 번호가 없습니다.")
            }
        }
    }
}
compare()
