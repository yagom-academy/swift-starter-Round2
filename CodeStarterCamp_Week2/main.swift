//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//


import Foundation


//회차와 Lotto번호들을 저장하는 Dictionary 타입의 변수를 생성합니다.
//"1회차": [1, 2, 3, 4, 5, 6] 와 같은 Key와 Value를 가집니다.
//Step 2의 로또 당첨 번호 생성 함수를 호출할 때마다, 회차와 로또 번호를 Dictionary에 저장하고자 합니다. 이와 같은 동작을 구현하기 위한 별도의 함수를 만들어봅시다.
//새로운 로또 당첨 번호를 생성하면, 직전 회차에 1을 더해 금번 회차를 만들어냅니다.
//회차를 Key로, 새로운 로또 당첨 번호를 Value로 하는 Dictionary 에 저장합니다.
//로또 당첨 번호를 생성한 후 Dictionary에 저장된 로또 당첨 번호를 확인해봅니다.
//로또 당첨 번호를 5번 생성합니다.
//Dictionary 에서 원하는 회차의 로또 당첨 번호를 찾습니다.
//Optional 값을 안전하게 추출합니다.
//Dictionary 에서 추출한 원하는 회차의 로또 당첨 번호 6개를 아래와 같이 출력합니다.
//2회차의 로또 당첨 번호는 1, 2, 3, 4, 5, 6 입니다.


var lottoResults: [String: [Int]] = [:]

func generateLottoNumbers() {
    let previousRound = lottoResults.keys.count + 1
    let lottoNumbers = (1...6).map { (number: Int) -> Int in
        return Int.random(in: 1...45)
    }
    
    lottoResults["\(previousRound)회차"] = lottoNumbers
}

for _ in 1...5 {
    generateLottoNumbers()
}

if let secondRoundNumbers = lottoResults["2회차"] {
    print("2회차의 로또 당첨 번호는 \(secondRoundNumbers[0]), \(secondRoundNumbers[1]), \(secondRoundNumbers[2]), \(secondRoundNumbers[3]), \(secondRoundNumbers[4]), \(secondRoundNumbers[5]) 입니다.")
} else {
    print("2회차의 로또 당첨 번호가 없습니다.")
}
