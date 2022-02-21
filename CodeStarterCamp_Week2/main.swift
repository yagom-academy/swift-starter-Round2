//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//1. 1부터 45 사이의 랜덤한 숫자를 생성합니다.
//2. Collection 타입 중 하나를 선택해, 6개의 랜덤한 숫자를 저장합니다.
//3. 6개의 숫자는 ‘서로 겹치지 않아야’ 합니다.
//4. 이 함수는 6개의 랜덤한 숫자를 저장한 Collection 타입의 값을 반환합니다.
var lottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: Set<Int> = [1,2,3,4,5,6]
var round : Int = 1

func countUpLottoNumbers() {
    round += 1
    makeLottoNumbers()
}

func makeLottoNumbers(){
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}








//로또 당첨번호를 나타내는 함수 -> makeLottoNumbers()를 dictionary에 회차와 함께 저장 하여 n회차 번호가 무엇이었는지 확인한다.
//key값: n회차
//value: makeLottoNumbers()
//최종결과 "n회차의 로또 당첨 번호는 1,2,3,4,5,6 입니다.(함수로 구현 해서 n부분을 파라미터로 받게 한다.)



//생성된 lottoNumbers와 myLottoNumbers를 비교해 공통의 숫자가 있는지 없는지를 비교
//공통된 숫자를 뽑는 변수를 생성

//var matchNumber = lottoNumbers.intersection(myLottoNumbers)
//var matchStringArray: [String] = []
//
//func changeType(set: Set<Int>) -> String {
//    for index in matchNumber {
//    matchStringArray.append(String(index))
//    }
//    return matchStringArray.joined(separator: ", ")
//}
//
//let changedTypeLottoNumbers = changeType(set: matchNumber)
//
//func resultLotto() {
//    if matchNumber.isEmpty {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    } else { //배열값이 아니라 숫자가 들어가야한다.
//    print("축하합니다! 겹치는 번호는 \(changedTypeLottoNumbers) 입니다.")
//    }
//}
//resultLotto()
