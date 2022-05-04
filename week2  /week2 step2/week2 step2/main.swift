//
//  main.swift
//  week2 step2
//
//  Created by 손신우 on 2022/05/04.
//

import Foundation

let myRottoNumbers : [Int] = [1,2,3,4,5,6]
var rottoNumbers : [Int] = []
while rottoNumbers.count < 6 {
    let randomNumber = Int.random(in: 1 ... 45 )
    if !rottoNumbers.contains(randomNumber) {
        rottoNumbers.append(randomNumber)
    }
}

func checkDuplicatedNumber() {
    let myRottoNumber_set : Set<Int> = Set(myRottoNumbers)
    let rottoNumber_set : Set<Int> = Set(rottoNumbers)
    let intersectionSet = myRottoNumber_set.intersection(rottoNumber_set)
    if intersectionSet.count > 0 {
        print("축하합니다! 곂치는 번호는 \(intersectionSet) 입니다!")
    } else {
        print("아쉽지만 당첨 번호가 없습니다")
    }
}

checkDuplicatedNumber()
