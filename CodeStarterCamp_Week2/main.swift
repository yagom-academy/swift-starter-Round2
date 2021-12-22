//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by 김동욱 on 2021/12/20.


import Foundation

//겹치지 않는 로또번호6개 생성기 Set<Int>반환!
func makeLotto (){
    
    //만들어진 랜덤넘버
    var makedLottoNum : Set<Int> = Set<Int>()
    //step2 로또번호
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    //교집합 하여 비교된 값
    var intersectionNum : Set<Int> = Set<Int>()
    
    
    //겹치지 않는 랜덤넘버 생성기
    func makeRandomNum() {
        while makedLottoNum.count < 6 {
            makedLottoNum.insert(Int.random(in: 1...45))}
    }
    
    // Set를 이용해 비교해주는 함수
    func intersectionCheck () {
        let checkSet : Set<Int> = makedLottoNum
        let checkLottonum : Set<Int> = Set(myLottoNumbers)
        intersectionNum = checkLottonum.intersection(checkSet)
    }
    
    //당첨번호 출력 함수
    func printWinningNum (){
        print("내로또 번호는 :", makedLottoNum)
        if intersectionNum.count > 0 {
            print("축하합니다! 겹치는 번호는\(intersectionNum) 입니다!")
        } else {
            print("아쉽지만 겹치는 번호가 없습니다")
        }
    }
    
    makeRandomNum()
    intersectionCheck()
    printWinningNum()
}

makeLotto()

