//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var integers = [1,2,3]
let people = ["yagom": 10, "eric":15, "mike":12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입이다.
for (name, age) in people {
    print("\(name): \(age)")
}

