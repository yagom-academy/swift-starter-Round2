//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//Step2
var myLottoNumbers: Set<Int> = [];
var winLottoNumbers: Set<Int> = [];
let numbers = Array(1...45);

while myLottoNumbers.count < 6 {
    myLottoNumbers.insert(numbers.randomElement()!)
}
var ascendMyNum = myLottoNumbers.sorted(by: <)
print(ascendMyNum)

while winLottoNumbers.count < 6 {
    winLottoNumbers.insert(numbers.randomElement()!)
}
var ascWinNum = winLottoNumbers.sorted(by: <)
print(ascWinNum)

var getLotto: Int = 0;
var sameNumber: Set<Int> = [];
for myLottoNumber in myLottoNumbers {
    for winLottoNumber in winLottoNumbers {
        if(winLottoNumber == myLottoNumber) {
            sameNumber.insert(winLottoNumber)
            getLotto += 1;
        }
    }
}

switch getLotto {
case 0:
    print("아쉽지만 겹치는 번호가 없습니다.!");
case 1...6:
    print("축하합니다! 겹치는 번호는 \(sameNumber)입니다!");
default:
    print("번호를 비교하세요.")
}
