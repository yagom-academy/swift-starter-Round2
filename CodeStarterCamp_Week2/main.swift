//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var generatedNumbers: Set<Int> = Set<Int>()
var correctNumbers = [Int]()

//번호생성 함수
func generateNumbers() {
    while(generatedNumbers.count < 6){
        generatedNumbers.insert(Int.random(in: 1...45))
    }
}
    
 
//번호비교 함수
func checkNumbers(){
    for number in 0...5{
        if(myLottoNumbers.contains(Array(generatedNumbers)[number])) == true{
            correctNumbers.append(Array(generatedNumbers)[number])
        }
    }
    if correctNumbers.isEmpty == true{
        print("아쉽지만 겹치는 번호가 없습니다.")
        }
        else{
            print("축하합니다. 겹치는 번호는 ", correctNumbers.sorted(), "입니다!")
    }
}



//로또번호 생성
generateNumbers()

//번호비교후 출력
checkNumbers()

