//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var myLottoNumbers: Set<Int> = [];
var winLottoNumbers: Set<Int> = [];
let numbers = Array(1...45);

// 내 로또 번호 입력
while myLottoNumbers.count < 6 {
    print("내 로또 번호: ", terminator: "")
    let input = Int(readLine()!)!
    myLottoNumbers.insert(input)
}
var ascMyNum = myLottoNumbers.sorted(by: <)
print(ascMyNum)

// 당첨 번호 랜덤 추첨
while winLottoNumbers.count < 6 {
    winLottoNumbers.insert(numbers.randomElement()!)
}
var ascWinNum = winLottoNumbers.sorted(by: <)
print(ascWinNum)

var getLotto: Int = 0;
for myLottoNumber in myLottoNumbers {

    for winLottoNumber in winLottoNumbers {

        if(winLottoNumber == myLottoNumber) {
            getLotto += 1;
        }
    }
}


switch getLotto {
case 0:
    print("꽝입니다!");
case 1:
    print("아쉽네요! 번호 1개만 맞았습니다.");
case 2:
    print("아쉽네요! 번호 2개만 맞았습니다.");
case 3:
    print("축하합니다! 번호 3개가 맞았습니다!");
case 4:
    print("축하합니다! 번호 4개가 맞았습니다!");
case 5:
    print("축하합니다! 번호 5개가 맞았습니다!");
case 6:
    print("축하합니다! 번호 6개가 맞았습니다!");
default:
    print("번호를 비교하세요.")
}




//func createMyLottoNumbers() -> Set<Int> {
//    while myLottoNumber.count < 7 {
//        myLottoNumber.insert(Int.random(in: 1...45))
//    }
//    return myLottoNumber;
//}
//
//func createWinNumbers() -> Set<Int> {
//    while winLottoNumbers.count < 7 {
//        winLottoNumbers.insert(Int.random(in: 1...45))
//    }
//    return winLottoNumbers;
//}
//
//
//func compareLottoNumbers(winning: Set<Int>, mine: Set<Int>) {
//    var sameLottoNumbers = Set<Int>()
//    sameLottoNumbers = winning.intersection(mine)
//    
//    // 조건문 구현
//    if sameLottoNumbers.count > 0 {
//        var sameLottoNumbersString = String()
//        
//        // 조건문
//        for numberString in sameLottoNumbers {
//            sameLottoNumbersString += String(numberString) + ","
//        }
//
//        // 반점 제거
//        sameLottoNumbersString.removeLast()
//        
//        print("축하합니다! 겹치는 번호는 \(sameLottoNumbersString)입니다!")
//        
//    } else {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//    }
//}
//
//
//createMyLottoNumbers()
//createWinNumbers()
//compareLottoNumbers
