//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func makeWinLottoNumbers() -> Array<Int> {
    
    var lottoNumbers = Array<Int>(1...45)
    var winLottoNumbers: Set<Int> = []
    
    for _ in 1...6 {
        var randomNumber: Int = 0
        
        if let randomNum:Int = lottoNumbers.randomElement() {
            randomNumber = randomNum
        } else {
            print("There is nil in lottoNumbers")
        }
                
        winLottoNumbers.insert(randomNumber)
        lottoNumbers = lottoNumbers.filter() {$0 != randomNumber}
    }
    
    return Array(winLottoNumbers)
}

// 결과 출력함수
func printLottoResult(_ round:Int) {
    print("\(round)회차의 로또 당첨번호는 ",terminator: "")
    let numbers = chooseLottoRound(round)
    for number in numbers{
        if number == numbers[numbers.count - 1]{
            print(number,terminator: "")
        } else {
            print(number,terminator: ", ")
        }
    }
    print(" 입니다.")
}

// 로또번호 생성해서 딕셔너리에 저장하는 함수
func tryLotto() {
    let round = "\(lottoNumberDic.count+1)회차"
    let numbers = makeWinLottoNumbers()
    
    lottoNumberDic[round] = numbers
}

// 원하는 회차 옵셔널 값 안전하게 추출하는 함수
func chooseLottoRound(_ round:Int) -> Array<Int> {
    var lottoNumbers: Array<Int> = []
    for i in 0...5{
        if let lottoNumber:Int = lottoNumberDic["\(round)회차"]?[i] {
            lottoNumbers.append(lottoNumber)
        } else {
            print("There is nil in lottoNumbers")
        }
    }
    return lottoNumbers.sorted()
}

// 딕셔너리 생성
var lottoNumberDic: [String:Array<Int?>] = [:]

// 로또번호 5번 생성
for _ in 1...5 {
    tryLotto()
}

// 원하는 회차 선택
let round = 3
printLottoResult(round)


