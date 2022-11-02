//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

repeat {
    integers.removeLast()
    print(integers)
} while integers.count > 0
