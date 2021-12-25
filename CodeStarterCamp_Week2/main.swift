//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 김동욱 on 2021/12/24.
//

import Foundation

func weekWinningLotto (){
    
    //생성된 로또 당첨번호
    var winningLottoNumber : Set<Int> = Set<Int>()
    //당첨번호를 몇번 호출했는지의 카운트
    var makeRandomNumberCount : Int = 0
    //몇회 호출했는지의 카운트를 문자열값으로 변환
    var countWeekNumber : String = "\(makeRandomNumberCount)회차:"
    //딕셔너리 저장공간
    var weekLottoNumber : [String : String] = [:]
    // [String]타입으로 변환된값
    var stringArrayValue : [String] = []
    // String 타입으로 변환된값
    var stringValue : String = ""
    
    
    //6개의 겹치지 않는 로또번호 생성기 저장은 Dictionary 에 저장함 저장된 key, value 모두 String 타입
    func makeRandomNumber() {
        while winningLottoNumber.count < 6 {
            winningLottoNumber.insert(Int.random(in: 1...45))
        }
        makeRandomNumberCount += 1
        countWeekNumber = "\(makeRandomNumberCount)회차:"
        changeType(intArray: Array(winningLottoNumber))
        saveDictionary(key: countWeekNumber, value: stringValue)
        winningLottoNumber = []
    }
    
    //키와 밸류 값을 받아 딕셔너리에 저장해주는 함수 매개변수 타입은 String : String
    func saveDictionary (key: String, value : String ){
        weekLottoNumber.updateValue(value, forKey: key)
    }
    //[Int] -> [String] -> String 타입으로 변환 하는함수
    func changeType (intArray : [Int]){
        stringArrayValue = intArray.map { String($0)} //이부분 공부해야함 map? 이라는 개념
        stringValue = stringArrayValue.joined(separator: ", ")
    }
    
    //로또 번호 5번 생성 함수
    func repeatFive(){
        for _ in 1...5 {
            makeRandomNumber()
        }
        print(weekLottoNumber)
    }
    
    repeatFive()
}

weekWinningLotto()

