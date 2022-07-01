//
//  step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/06/29.
//

import Foundation

var callStringNumber: String = ""
var lottoNumbers: Set<Int> = Set<Int>()
var sameNumbers: [Int] = []
let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func makeLottoNumbers(count: Int){
    while lottoNumbers.count < count{
        let number: Int = Int.random(in: 1...45)
        lottoNumbers.insert(number)
    }
}

func checkSameNumber(){
    for myLottoNumber in myLottoNumbers{
        for lottoNumber in lottoNumbers{
            if myLottoNumber == lottoNumber {
                sameNumbers.append(myLottoNumber)
            }
        }
    }
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        //callSameNumbers(sameNumberCount: sameNumbers.count, sameNumber: sameNumbers)
        print("축하합니다! 겹치는 번호는 \(sameNumbers.map{String($0)}.joined(separator: ", ")) 입니다!")
    }
}

//func callSameNumbers(sameNumberCount: Int, sameNumber: [Int]){
//    for forCount in 1...sameNumberCount{
//        callStringNumber += String(sameNumber[forCount-1])
//        if forCount < sameNumberCount{
//            callStringNumber += ", "
//        }
//    }
//    print("축하합니다! 겹치는 번호는 \(callStringNumber) 입니다!")
//}
