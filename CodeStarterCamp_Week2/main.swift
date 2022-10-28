//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: STEP 2. 로또 번호 생성하여 내 번호와 맞춰보기

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbersSet = Set<Int>() // type inference 적용
    
    while lottoNumbersSet.count < 6 {
        let randomInt = Int.random(in: 1...45)
        
        lottoNumbersSet.insert(randomInt)
    }
    
    return lottoNumbersSet
}

func checkLottoNumbers(lottoNumbers: Set<Int>, myNumbers: [Int]) {
    let intersection: Set<Int> = lottoNumbers.intersection(myNumbers)
    
    var printedMember = 0
    
    if intersection.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        
        for member in intersection {
            if printedMember < intersection.count - 1 {
                print(member, terminator: ", ")
                
                printedMember = printedMember + 1
            } else {
                print(member, terminator: " 입니다!\n")
            }
        }
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

var myLottoNumbers: [Int] = [3, 9, 12, 43, 29, 24]

var lottoNumbers = Set<Int>() // type inference 적용

/*
 lottoNumbers = generateLottoNumbers()
 
 checkLottoNumbers(lottoNumbers: lottoNumbers, myNumbers: myLottoNumbers)
 
 로또 번호가 제대로 생성 됐는지 확인!
 print(lottoNumbers)
 
 lottoNumbers = generateLottoNumbers()
 
 checkLottoNumbers(lottoNumbers: lottoNumbers, myNumbers: myLottoNumbers)
 
 // 로또 번호가 제대로 생성 됐는지 확인용!!
 print(lottoNumbers)
 */

//MARK: STEP 3. 로또 번호를 회차별로 저장하고 확인하기

var lottoDictionary = [String : Set<Int>]()

func saveLottoDataToDict(runTime: Int) {
    for round in 1...runTime {
        var savingRound = round
        var lottoNumbers = generateLottoNumbers()
        
        lottoDictionary["\(savingRound)회차"] = lottoNumbers
    }
    
}

func findLottoData(_ wantedLottoRound: String) {
    if let numbersOfRound = lottoDictionary[wantedLottoRound] {
        print("\(wantedLottoRound)의 로또 당첨 번호는 ", terminator: "")
        
        var printedMember = 0
        
        for member in numbersOfRound {
            if printedMember < numbersOfRound.count - 1 {
                print(member, terminator: ", ")
                
                printedMember = printedMember + 1
            } else {
                print(member, terminator: " 입니다.\n")
            }
        }
        
    } else {
        print("\(wantedLottoRound)는 실행되지 않았습니다.")
    }
}

saveLottoDataToDict(runTime: 5)
findLottoData("2회차")
findLottoData("5회차")
findLottoData("3회차")
findLottoData("7회차")

