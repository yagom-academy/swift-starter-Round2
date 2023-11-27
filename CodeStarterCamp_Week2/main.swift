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


let winningLottoNums: [Int] = [1, 2, 3, 4, 5, 6]

var pickNumbers: Set<Int> = []

for _ in 1...6 {
    var randomNumber = Int.random(in: 1...45)
    pickNumbers.insert(randomNumber)
}
//print("myLottoNumber \(pickNumbers)")
//let myLottoNumbers = Array(1...6) - TEST ( if 조건 확인용 )
let myLottoNumbers = Array(pickNumbers)
//let anotherNumbers = pickNumbers

//print(type(of: myLottoNumbers))
//print(type(of: anotherNumbers))


if myLottoNumbers == winningLottoNums {
    print("축하합니다! 겹치는 번호는 \(winningLottoNums) 입니다.")
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
