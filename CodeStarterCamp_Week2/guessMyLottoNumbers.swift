//
//  guessMyLottoNum.swift
//  CodeStarterCamp_Week2
//
//  Created by 임성묵 on 2023/09/06.
//

import Foundation

// 나의 로또 번호 생성
let myLottoNumbers: [Int] = [3, 6, 9, 10, 11, 12]


// 로또 추첨
func drawLottos() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>() // 반환될 로또번호
    var randomNumber : Int  // 랜덤번호
    
    // 로또 번호 생성 겹치지 않는 숫자가 6개가 될때까지 반복한다
    while lottoNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    //생성된 로또번호 반환
    return lottoNumbers
}

//당첨 확인
func checkLottoNumbers(myLottoNumbers: [Int]) -> Void {
    // 맞은 번호를 저장할 Set 컬렉션 생성.
    var correctNumber: Set<Int> = Set<Int>()
    // 로또 당첨 번호 저장
    let lottoNumbers = drawLottos()
    
    // 내 번호가 로또 당첨번호에 포함되는지 확인.
    for number in myLottoNumbers {
        if(lottoNumbers.contains(number)) {
            correctNumber.insert(number)
        }
    }
    print(myLottoNumbers)
    print(lottoNumbers)
    //결과 출력
    if(correctNumber.isEmpty) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for number in correctNumber {
            // ,출력을 위한 마지막 값 체크 조건
            if(correctNumber.count != 1) {
                print("\(number) ", terminator: ",")
            } else {
                print("\(number) ", terminator: "")
            }
            // 번호 갯수를 줄여서 확인
            correctNumber.removeFirst()
        }
        print("입니다!")
    }
}



