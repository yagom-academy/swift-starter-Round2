//
//  main.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/27.
//



// STEP 2
import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6] //찍은 번호

// 로또 생성번호
var generateLotto : Set<Int> = []

while generateLotto.count < 6{
    let number = Int.random(in: 1...45)
    generateLotto.insert(number)
}
print("당첨번호 \(generateLotto) 입니다")

// 교집합 
let intersection: Set<Int> = generateLotto.intersection(myLottoNumbers)

if intersection.count == 0{
    print("아쉽지만 겹치는 번호가 없습니다.")
}else{
    print("축하합니다! 겹치는 번호는 \(intersection) 입니다!")
}
