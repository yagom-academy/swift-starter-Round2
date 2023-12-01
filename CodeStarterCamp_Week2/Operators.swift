//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/26.
//

import Foundation

let one = 1
let two = 2
// MARK: 논리연산자 - AND, OR
print(one == 1) // true
print(one == two) // false
print(one >= two) // false
print(one <= two) // true
print(one > 0) // true
print(one > -1)// true
print(one < two)// true
print(1 != one) // false
print(one != two) // true

// MARK: 비트연산자 - &, |
let numberA = 1
let numberB = 2
print(1&2) // 0 - 0000
print(1|2) // 3 - 0011

/// 비트연산은 프로그래밍에서 이런 수학적연산보다는 비트검출이나 옵션전달 등의
/// 목적으로 사용한다

let apple: Int = 1  // 0001
let orange: Int = 2 // 0010
let banana: Int = 4 // 0100

func printFavoriteFruits(_ selectedFruits: Int) {
   print("사과를 좋아하는가?:\((selectedFruits & apple) != 0)")
   print("오렌지를 좋아하는가?:\((selectedFruits & orange) != 0)")
   print("바나나를 좋아하는가?:\((selectedFruits & banana) != 0)")
}

printFavoriteFruits(apple | orange)

let vibrateMode = 1 // 0001
let airplaneMode = 2 //0010
let wiFi = 4 // 0100
let hotSpotMode = 8 // 1000
var currentMode = vibrateMode | airplaneMode // 0011
print(currentMode)

currentMode = wiFi | hotSpotMode // 0100 | 1100
print(currentMode)

