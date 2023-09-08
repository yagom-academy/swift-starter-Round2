//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 콩지.


import Foundation

let myLottoNumbers: [Int] = [3,10,5,8,28]

var randomNum: Set<Int> = []
while randomNum.count<5 {
    let random = Int.random(in: 1...45)
    randomNum.insert(random)
}
//print(randomNum)

let intersection = randomNum.intersection(myLottoNumbers)
let joinedElements = intersection.map { String($0) }.joined(separator: ", ")

if intersection.count>0 {
    print("축하합니다! 겹치는 번호는 \(joinedElements) 입니다!")
}
else{
    print("아쉽지만 겹치는 번호가 없습니다.")
}
