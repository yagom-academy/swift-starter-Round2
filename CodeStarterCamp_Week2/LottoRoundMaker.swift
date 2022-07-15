//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by ㅇㅇ on 2022/07/12.
//
import Foundation

var roundDic = [String : Array<String>]()

func makeLottoNumber() -> Array<String>{
    var numberArray = Array<String>()
    while numberArray.count < 6{
        let randomNumber = String(Int.random(in: 1...45))
        if !numberArray.contains(randomNumber){
            numberArray.append(randomNumber)
        }
    }
    return numberArray
}

func makeRoundOfLotto(totalRound : Int){
    for i in 0..<totalRound{
        roundDic.updateValue(makeLottoNumber(), forKey: "\(i + 1)회차")
    }
}

func showRound(round : Int){
    if let result = roundDic["\(round)회차"]{
        print("\(round)회차의 로또 당첨 번호는 \(result.joined(separator: ", ")) 입니다.")
    }else{
        print("회차 정보가 없습니다 다시 확인 해주세요")
    }
}
