//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
// - todo -
// 1. Step1의 순서도를 바탕으로 로또 당첨 번호를 생성하는 함수
// 2. 내가 찍은 번호 배열을 myLottoNumbers 변수에 할당
// 3. 찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수를 생성합니다.
//  - 겹치는 번호를 포함하는 문구를 print합니다.
//  - 만약 겹치는 번호가 없다면 다음과 같은 문구를 print합니다. "아쉽지만 겹치는 번호가 없습니다."
//

import Foundation

var winningLottoNumbers: Set<Int> = []
let myLottoNumbers: [Int] = [1, 7, 15, 29, 36, 42]

func generateRandomLottoNumber() {
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
}

func comparedNumbers() -> [Int] {
    var matchedNumbers: [Int] = []
    
    for myNumber in myLottoNumbers {
        if winningLottoNumbers.contains(myNumber) {
            matchedNumbers.append(myNumber) // append vs. insert
        }
    }
    return matchedNumbers
}

func printLottoResult(matchedNumbers: [Int]) {
    if matchedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        switch matchedNumbers.count {
        case 1:
            print("겹치는 번호는 \(matchedNumbers[0]) 입니다. 총 \(matchedNumbers.count)개가 겹쳤습니다!")
        case 2:
            print("겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]) 입니다. 총 \(matchedNumbers.count)개가 겹쳤습니다!")
        case 3: // 5등
            print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]) 입니다. 총 \(matchedNumbers.count)개가 겹쳤습니다!")
        case 4: // 4등
            print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]), \(matchedNumbers[3]) 입니다. 총 \(matchedNumbers.count)개가 겹쳤습니다!")
        case 5: // 2,3등?
            print("축하합니다! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]), \(matchedNumbers[3]), \(matchedNumbers[4]) 입니다. 총 \(matchedNumbers.count)개가 겹쳤습니다!")
        case 6: // 1등
            print("축하합니다!! 겹치는 번호는 \(matchedNumbers[0]), \(matchedNumbers[1]), \(matchedNumbers[2]), \(matchedNumbers[3]), \(matchedNumbers[4]), \(matchedNumbers[5])입니다. 모든 번호가 겹쳤습니다!")
        default:
            print("unknown error")
        }
        //print("축하합니다! 겹치는 번호는 \(matchedNumbers) 입니다!")
    }
}

func printInformation() {
    print("로또 당첨 번호: \(winningLottoNumbers.sorted())")
    print("내가 찍은 번호: \(myLottoNumbers.sorted())")
}

generateRandomLottoNumber()

let myMatchedNumbers = comparedNumbers()

printInformation()
printLottoResult(matchedNumbers: myMatchedNumbers)
