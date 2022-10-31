//
//  main.swift
//  Step3
//
//  Created by jiye Yi on 2022/10/31.
//

import Foundation
//로또 당첨 번호 생성하는 함수
func makeLottoNumbers() -> Set<Int> {
    var lottoNumber: Set<Int> = Set<Int>()
    while lottoNumber.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumber.insert(randomNumber)
    }
    return lottoNumber
}


// 로또 당첨 번호를 생성하는 함수에서 [] 없이 출력되는 상수
let makeNewLottoNumbers = makeLottoNumbers().map{ String($0) }.joined(separator: ", ")

//로또 번호를 저장하는 dictionary 타입의 변수

var lottoDictionary: Dictionary<String, Any> = [String: Any]()

func makeLottoByRounds() {
    for round in 1...5 {
        lottoDictionary["\(round)회차"] = makeNewLottoNumbers
    }
}
func findLottoRound(roundYouWant: String) {
    if let lottoList = lottoDictionary[roundYouWant] {
        print("\(roundYouWant)의 로또 당첨 번호는 ", terminator: "\(makeNewLottoNumbers) 입니다.")
    } else {
        print ("원하는 회차가 없습니다.")
    }
}
makeLottoByRounds()
findLottoRound(roundYouWant: "2회차")
