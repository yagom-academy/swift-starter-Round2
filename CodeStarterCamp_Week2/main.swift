
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
    var makeRandomNumberCount : Int = 1
    //딕셔너리 저장공간
    var weekLottoNumber : [String : [Int]] = [:]
    //딕셔너리 키값 저장
    var countWeekNumber : String = "\(makeRandomNumberCount)회차"
    
    //6개의 겹치지 않는 로또번호 생성기
    func makeRandomNumber()  {
        winningLottoNumber = []
        while winningLottoNumber.count < 6 {
            winningLottoNumber.insert(Int.random(in: 1...45))
        }
    }
    
    //메이크 랜덤넘버 카운트+1
    func makeRandomNumberCountUp(){
        makeRandomNumberCount += 1
        makeRandomNumber()
    }
    
    //키와 밸류 값을 받아 딕셔너리에 저장해주는 함수
    func saveDictionary (key: String, value : [Int] ){
        countWeekNumber = "\(makeRandomNumberCount)회차"
        weekLottoNumber.updateValue(value, forKey: key)
    }
    
    //로또 번호 5번 생성 함수
    func makeRandomNumberRepeatFive(){
        for _ in 1...5 {
            makeRandomNumberCountUp()
            saveDictionary(key: countWeekNumber, value: Array(winningLottoNumber))
        }
    }
    
    //언래핑, 출력 하는 함수
    func printCheckWeekWinningNumber(key : Int){
        var value : [String] = []
        guard var unwrapValue : [Int] =  weekLottoNumber["\(key)회차"] else { return }
        for _ in 1...6 {
            value.append("\(unwrapValue.removeFirst())")
        }
        print("\(key)회차 의 로또 당첨 번호는 \(value.joined(separator: ", ")) 입니다.")
    }
   
    makeRandomNumberRepeatFive()
    printCheckWeekWinningNumber(key: 1)
    
}

weekWinningLotto()

