//
//  main.swift
//  CodeStarProject
//
//  Created by 유지완 on 2023/08/27.

//STEP2
import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumders: Set<Int> = []

func createLottoNumders() -> Set<Int>{
 
    while lottoNumders.count < 6{
        let numder = Int.random(in: 1...45)
        lottoNumders.insert(numder)
    }
    return lottoNumders
}
print("당첨번호 \(createLottoNumders())입니다.")

let overlappingLottoNumder: Set<Int> = createLottoNumders().intersection(myLottoNumbers)

func checkForOverlappingNumbers(overlappingLottoNumder: Set<Int>){
    
    if overlappingLottoNumder.count == 0{
        print("아쉽지만 겹치는 번호가 없습니다")
    }else{
        print("축하합니다! 겹치는 번호는 \(overlappingLottoNumder)입니다!")
    }
}
checkForOverlappingNumbers(overlappingLottoNumder: overlappingLottoNumder)
