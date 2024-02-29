//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

var lottoNumbers: [Int] = []
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var matchNumbers: [Int] = []
enum Result {
    case fail, success
}

func makeNumber()-> [Int]{
    var count = 0
    var numList: [Int] = []
    
    while count <= 5 {
        let number = Int.random(in: 1...45) //랜덤하게 수를 생성
        var isSame: Bool = false
        
        for containedNumber in numList {
            if containedNumber == number {
                isSame = true
                break
            }
        }
        if isSame != true{
            numList.append(number)
            count = count + 1
        }
    }
    return numList
}

func checkNumber()-> Result{
    var result: Result = .fail
    for myLottoNumber in myLottoNumbers{
        if lottoNumbers.contains(myLottoNumber){
            matchNumbers.append(myLottoNumber)
            result = .success
        }
    }
    return result
}

lottoNumbers = makeNumber()
if checkNumber() == Result.fail{
    print("아쉽지만 겹치는 번호가 없습니다.")
} else{
    var string = ""
    for matchNumber in matchNumbers {
        string += " \(matchNumber)"
        if matchNumber != matchNumbers[matchNumbers.count-1]{
            string += ","
        }
    }
    print("축하합니다! 겹치는 번호는\(string)입니다!")
}
