//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]      //선택 번호 생성

var randomNums : Set<Int> = Set<Int>()
var correctNums : [Int] = [Int]()
var countRound : Int = 0
var saveLottos = [Int: Set<Int>]()  // 회차 입력할 딕셔너리 생성

//랜덤 숫자 생성 후 randomNums에 숫자 입력
func makingNumbers() {
    while randomNums.count <= 6 {
        randomNums.insert(Int.random(in: 1...45))
    }
}

//번호 확인
func checkingNumber() {
    makingNumbers()
    for i in myLottoNumbers {
        if randomNums.contains(i) {
            correctNums.append(i)
        }
    }
    countRound += 1 //매 회차 시 카운트up
}

//함수 출력
func runningLotto() {
    checkingNumber()
    if correctNums.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(correctNums) 입니다!")
    }
    savingLottoNumbers()
    //전역변수 초기화
    correctNums = []
    randomNums = Set<Int>()
    
}


func savingLottoNumbers() {
    saveLottos[countRound] = randomNums
}

//5번 실행
runningLotto()
runningLotto()
runningLotto()
runningLotto()
runningLotto()

if let xx = saveLottos[2] {
    print("2회차의 로또 당첨 번호는 \(Array(xx).sorted()) 입니다.") // set 를 array로 담아 로또 번호를 순서대로 변경.
}else{
    print("nil")
}
