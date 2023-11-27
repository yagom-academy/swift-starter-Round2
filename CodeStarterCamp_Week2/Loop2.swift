//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/25.
//

import Foundation

var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "Tim": 22]

//MARK: - for - in
for integer in integers {
   print(integer)
}

for (name, age) in people {
   print("\(name): \(age)")
}

// MARK: - While
while integers.count > 1 {
   integers.removeLast()
   print("integers: \(integers)")
}

integers.append(5)
integers.append(10)
integers.append(1)
integers.append(2)
integers.append(3)
print(integers)
// MARK: repeat while
repeat {
   integers.removeLast()
   print("integers2: \(integers)")
} while integers.count > 0

