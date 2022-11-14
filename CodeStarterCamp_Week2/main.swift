//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [1, 3, 10, 16, 30, 45]
var lottoNumbers: [Int] = []
var equalNumber: [Int] = []


// 로또 번호 생성
func createNumber() {
        while lottoNumbers.count < 6 {
            let num = Int.random(in: 1...45)
            if !lottoNumbers.contains(num) {
                lottoNumbers.append(num)
            }
        }
    print(lottoNumbers)
}

// 로또 번호 비교
func compareLottoNumbers() {
    for myLottoNumberCount in myLottoNumbers {
        for lottoNumberCount in lottoNumbers {
            if myLottoNumberCount == lottoNumberCount {
                equalNumber.append(myLottoNumberCount)
            }
        }
    }
    print(equalNumber)
}

// 겹치는 번호 출력
func printNumber() {
    let equalNumberString = equalNumber.map { String($0) }
    let equalString = equalNumberString.joined(separator: ", ")

    if !equalNumber.isEmpty {
        print("축하합니다! 겹치는 번호는 \(equalString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

createNumber()
compareLottoNumbers()
printNumber()



// map 메소드는 제공된 클로저를 각 행렬 항목마다 적용한 후, 새롭게 매핑된 값들이 원래 행렬의 해당 값들의 순서와 같도록 배치된 새 행렬을 반환합니다.
// $0는 value의 다른 말로 축약형태로 이용되고 있음
// https://zeddios.tistory.com/72
