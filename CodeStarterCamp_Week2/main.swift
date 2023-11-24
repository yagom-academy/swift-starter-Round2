//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var integerset: Set<Int> = Set<Int>()

integerset.insert(1)
integerset.insert(100)
integerset.insert(99)
integerset.insert(Int(3.14))

print(integerset)
print(integerset.contains(1))
print(integerset.contains(3))

integerset.remove(100)
print(integerset)

integerset.removeFirst()
print(integerset)

print(integerset.count)

// Set은 집합연산에 유용함
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union)

// 합집합 - 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)
