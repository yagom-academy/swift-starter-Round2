//
//  makingLottoNumber.swift
//  CodeStarterCamp_Week2
//
//  Created by 곽우종 on 2021/12/28.
//

import Foundation


func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let targetNumber = Int.random(in: 1...45)
        
        if !lottoNumbers.contains(targetNumber) {
           lottoNumbers.insert(targetNumber)
        }
    }
    
    return lottoNumbers
}


//n번째 로또 추출을 프린트 합니다.
func printLottoNDrow(maxDraw: Int,printDraw: Int) {
    let subfix: String = "회차"
    var answerLottoDict: Dictionary<String, Set<Int>> = [:]
    
    for count in 1...maxDraw {
        answerLottoDict[String(count) + subfix] = makeLottoNumbers()
    }
    
    if let printTarget = answerLottoDict[String(printDraw) + subfix]{
        var resultSentence: String = String(printDraw) + "회차의 로또 당첨 번호는 "
        
        for indexLottoNumber in printTarget {
            resultSentence = resultSentence + String(indexLottoNumber) + ", "
        }
        resultSentence = resultSentence.dropLast(2) + " 입니다."
        print(resultSentence)
        
    } else {
        print("범위에서 벗어난 회차입니다!")
    }
            
}

func compareLotto(myLottoNumbers my: Array<Int>,answerLottoNumbers answer: Set<Int>){
    var countMatch: [Int] = []
    
    for index in 0...(my.count-1){
        if answer.contains(my[index]){
            countMatch.append(my[index])
        }
    }
    
    if countMatch.count > 0 {
        var resultSentence: String = "축하합니다! 겹치는 번호는 "
        
        if countMatch.count > 2 {
         for index in 0...countMatch.count-2 {
            resultSentence = resultSentence + String(countMatch[index]) + ", "
         }
        }
        resultSentence = resultSentence + String(countMatch[countMatch.count-1]) + " 입니다."
        print(resultSentence)
        
    } else {
     print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
