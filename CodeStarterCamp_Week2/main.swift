//
//  main.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/27.


// STEP2
import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var generateLotto: Set<Int> = []


func creationLottoNumder() -> Set<Int>{

    while generateLotto.count < 6{
        let numder = Int.random(in: 1...45)
        generateLotto.insert(numder)
    }
    return generateLotto
}
print("당첨번호 \(creationLotto())")

let winningNumder: Set<Int> = creationLottoNumder().intersection(myLottoNumbers)

if winningNumder.count == 0{
    print("아쉽지만 겹치는 번호가 없습니다")
}else{
    print("축하합니다! 겹치는 번호는 \(winningNumder)입니다!")
}



