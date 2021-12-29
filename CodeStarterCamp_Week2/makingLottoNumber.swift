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

func addLottoDrow(lottoSaveDict: Dictionary<String, Set<Int>>,count: Int) -> Dictionary<String, Set<Int>> {
    var lottoSaveDictTemp = lottoSaveDict
    
    for _ in 1...count {
        let saveSentence: String = String(lottoSaveDictTemp.count + 1) + "회차"
        lottoSaveDictTemp[saveSentence] = makeLottoNumbers()
    }
    return lottoSaveDictTemp
}

func printLotto(answerLottoDict: Dictionary<String, Set<Int>>,printDraw: Int) {
    let subfix: String = "회차"
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

