//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


import Foundation

func generateLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []

    while lottoNumbers.count < 6 {
        let randomNum = Int.random(in: 1...45)
        var isDuplicate = false
        
        for number in lottoNumbers {
            if number == randomNum {
                isDuplicate = true
                break
            }
        }
        
        if !isDuplicate {
            lottoNumbers.append(randomNum)
        }
    }

    return lottoNumbers
}

func checkLottoResults(myNumbers: [Int], pickedNumbers: [Int]) -> String {
    var matchingNumbers: [Int] = []

    for myNumber in myNumbers {
        for pickedNumber in pickedNumbers {
            if myNumber == pickedNumber {
                matchingNumbers.append(myNumber)
                break
            }
        }
    }

    if matchingNumbers.isEmpty {
        return "아쉽지만 겹치는 번호가 없습니다."
    } else {
        var resultMessage = "축하합니다! 겹치는 번호는 "
        
        for number in matchingNumbers {
            resultMessage += "\(number), "
        }
       
        resultMessage.removeLast(2)
        
        resultMessage += " 입니다!"
        
        return resultMessage
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

let pickedNumbers = generateLottoNumbers()

let resultMessage = checkLottoResults(myNumbers: myLottoNumbers, pickedNumbers: pickedNumbers)
print(resultMessage)
