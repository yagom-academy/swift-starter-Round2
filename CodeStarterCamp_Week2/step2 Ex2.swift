//
//  step2 Ex2.swift
//  CodeStarterCamp_Week2
//
//  Created by 김동욱 on 2021/12/20.
//

//생성된 값을 set 컬렉션에 집어넣은후 배열로 변경해주는 방법

import Foundation


func makeLottonumber1(){
    
    //겹치지 않는 랜덤넘버 생성기 매개변수는 최대값 입력 가능
    func makeRandomNum(maxNum : Int ) -> Set<Int> {
        var myLottoNum : Set<Int> = Set<Int>()
        while myLottoNum.count < 6 {
            myLottoNum.insert(Int.random(in: 1...maxNum))}
        print("내가뽑은 로또번호 : \(myLottoNum)")
        return myLottoNum
    }
    
    //step2 로또번호
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    
    makeRandomNum(maxNum: 45)
    
    //Set타입을 정렬후 배열로 변경해주는 함수
    func arrayChangeSet (to changeArray : Set<Int> ) -> [Int] {
        let sorted : [Int] = changeArray.sorted()
        return sorted
    }
    
    //Array + Array 함수
    func unionArray(saveLottoNum : [Int], makeRandomNum : [Int]) -> [Int]{
        let union : [Int] = saveLottoNum + makeRandomNum
        return union
    }
    print(makeRandomNum(maxNum: 45))
    
}
