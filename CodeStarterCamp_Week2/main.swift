//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

print("Hello, World!")

var lotteryArray = Set<Int>()
while lotteryArray.count != 6 {
  if let randomNumber = (1...45).randomElement() {
    lotteryArray.insert(randomNumber)
  }
}
print(lotteryArray)

