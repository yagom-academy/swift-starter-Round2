//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


// 로또생성함수
func createLottoNumbers(_: (Int)) -> Set<Int> {
    let randomNum45 = Array(1...45)
    var randomNum6 : Set<Int> = []
    while randomNum6.count < 6 {
        randomNum6.insert(randomNum45.randomElement() ?? 0)
    }
    return randomNum6
}

// 내가 찍은 번호, 로또 당첨번호 변수 선언
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let jackPotNum: Set<Int> = createLottoNumbers(1).intersection(myLottoNumbers)

// 겹치는 숫자 확인 함수
func comeTrueNumbers () {
    
    switch jackPotNum.isEmpty {
    case true:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case false:
        print("축하합니다! 겹치는 번호는" , jackPotNum.map{(number: Int) -> String in
            return String(number)}.joined(separator: ",") + " 입니다!")
    
    break

}
    
    
}

comeTrueNumbers()


