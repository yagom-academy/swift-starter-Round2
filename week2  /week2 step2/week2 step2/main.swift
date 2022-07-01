//
//  main.swift
//  week2 step2
//
//  Created by 손신우 on 2022/05/04.
//

let myRottoNumbers : Set<Int> = [1,2,3,4,5,6]
var rottoNumbers : Set<Int> = []
while rottoNumbers.count < 6 {
    let randomNumber = Int.random(in: 1 ... 45 )
    rottoNumbers.insert(randomNumber)
}

func checkDuplicatedNumber() {
    let intersectionSet = myRottoNumbers.intersection(rottoNumbers)
    let intersectionArray = Array(intersectionSet)
    if !intersectionSet.isEmpty {
        print("축하합니다! 당첨번호는 ", terminator: "")
        for index in 0 ... intersectionArray.count-1 {
            print("\(intersectionArray[index])",terminator: ", ")
        }
        print("입니다!")
    } else {
        print("아쉽지만 당첨 번호가 없습니다")
    }
}

