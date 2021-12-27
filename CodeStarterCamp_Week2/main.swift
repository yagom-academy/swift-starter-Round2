
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
    //딕셔너리 저장공간
    var weekLottoNumber : [String : [Int]] = [:]
    
    //6개의 겹치지 않는 로또번호 생성기 저장은 Dictionary 에 저장함 저장된 key, value 모두 String 타입
    func makeRandomNumber() -> String  {
        let countWeekNumber : String = "\(makeRandomNumberCount)회차"
        winningLottoNumber = []
        while winningLottoNumber.count < 6 {
            winningLottoNumber.insert(Int.random(in: 1...45))
        }
        return countWeekNumber
    }
    
    // 메이크 랜덤넘버 몇번했는지 카운트 해주는 함수
    func makeRandomNumberCountUp(){
        makeRandomNumberCount += 1
    }
    
    //키와 밸류 값을 받아 딕셔너리에 저장해주는 함수 매개변수 타입은 String : String
    func saveDictionary (key: String, value : [Int] ){
        weekLottoNumber.updateValue(value, forKey: key)
    }
    
    //로또 번호 5번 생성 함수
    func makeRandomNumberRepeatFive(){
        for _ in 1...5 {
            makeRandomNumberCountUp()
            saveDictionary(key: makeRandomNumber(), value: Array(winningLottoNumber))
        }
    }
    
    //언래핑, 출력 하는 함수
    //오타를 일으킬 위험을 조금 없애주었지만.. 이또한 하드코딩의 방식이아닌가..?
    func PrintWeekWinningNumber(key : Int){
        guard let unwrapValue : [Int] =  weekLottoNumber["\(key)회차"] else { return }
        print("\(key)회차 의 로또 당첨 번호는 \(unwrapValue) 입니다")
    }
    
    makeRandomNumberRepeatFive()
    PrintWeekWinningNumber(key: 2)
    
}

weekWinningLotto()
