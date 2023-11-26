//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/25.
//

import Foundation

// MARK: - Round2 [STEP1] - `로또 당첨번호 생성기 순서도 생성하기`
/*
 랜덤한 로또 당첨 번호를 생성하는 함수의 순서도,
 - 1부터 45사이의 랜덤한 숫자를 생성한다.
 - Collection 타입 중 하나의 형태로, 6개의 랜덤한 숫자를 저장
   - 6개의 숫자는 '서로 겹치지 않아야' 한다
 - 이 함수는 6개의 랜덤한 숫자를 저장한 Collection 타입 중 하나의 형태로 값을 반환한다.
 */

var randomNumber: Array<Int> = Array(1...45)
print(type(of: randomNumber))
print(randomNumber.shuffle())
var pickNumbers: Set<Int> = []
for i in randomNumber {
   print(i)
}
//while pickNumbers.count < 6 {
//   pickNumbers.insert(randomNumber.randomElement() ?? 0)
////   print("pickNumbers: \(pickNumbers)")
//   pickNumbers.sorted()
//   print("pickNumbers: \(pickNumbers)")
//}
//
//pickNumbers.sorted()
//print(pickNumbers.sorted())

