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
func randomLottos() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    var randomNumber : Int
    
    while lottoNumbers.count < 6 {
        randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    return lottoNumbers
}

//당첨 확인
func checkLottoNumbers(myLottoNumbers: [Int]) -> Void {
    var correctNumbers = Array<Int>()
    let lottoNumbers = randomLottos()
    var lottoString = ""
    
    for number in myLottoNumbers {
        if(lottoNumbers.contains(number)) {
            correctNumbers.append(number)
        }
    }

    if(correctNumbers.isEmpty) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        for number in correctNumbers {
            lottoString.append("\(number), ")
        }
        lottoString.removeLast()
        lottoString.removeLast()
        
        print("축하합니다! 겹치는 번호는 \(lottoString) 입니다!")
    }
}



