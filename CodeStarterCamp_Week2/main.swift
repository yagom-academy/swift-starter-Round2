//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 망망 on 2022/11/16.
//

import Foundation

/* 기능목록
 1. 회차, 로또번호를 저장하는 딕셔너리 타입 변수
 2. 로또번호 생성함수
 3. 로또번호 생성함수 호출 시 딕셔너리에 저장할 함수 (새로운 로또번호 시 회차번호 +1
 4. 로또 번호 5회 생성
 5. 원하는 회차의 로또번호 찾기 (옵셔널 값으로 안전하게 추출
 6. 원하는 회차 로또번호 출력
 */

var lotto: Dictionary<String, Array<Int>> = [String: Array]()

// 로또번호 생성
//func createlotto() -> Array<Int> {
//    createNumber()
//    return lottoNumbers
//}
func createlotto() -> Array<Int> {
    var lottoNumber: [Int] = []
    while lottoNumber.count < 6 {
        let number = Int.random(in: 1...45)
        if !lottoNumber.contains(number) {
            lottoNumber.append(number)
        }
    }
    return lottoNumber
}


// 로또번호, 회차 딕셔너리 저장
func lottoTimes(count: Int) {
    for countNumber in 1...count {
        lotto.updateValue(createlotto(), forKey: "\(countNumber)회차")
    }
}

// 로또번호 딕셔너리 출력
func outputLottoNumber() {
    let sortedLotto = lotto.sorted { (first, second) in return first.key < second.key}
    for (key, value) in sortedLotto {
        print("\(key) : \(value)")
    }
}

// 원하는 회차 출력
func chooseLottoNumber() {
    print("원하시는 회차를 입력하세요" , terminator: ": ")
    if let choosenum = readLine() {
        for (key, value) in lotto {
            if key == "\(choosenum)회차" {
                print("\(choosenum)회차의 로또 당첨 번호는 \(value) 입니다.")
            }
        }
    }
}


lottoTimes(count: 5)
outputLottoNumber()
chooseLottoNumber()

