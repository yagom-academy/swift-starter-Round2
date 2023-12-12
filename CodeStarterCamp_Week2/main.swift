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


