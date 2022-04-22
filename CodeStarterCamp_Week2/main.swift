//
//  Method.swift
//  CodeStarterCamp_Week1
//
//  Created by 장경빈 on 2022/04/18.
//
import Foundation

let myLottoNumbers : [Int] = [1,2,3,4,5,6]
let lottoNumbers = createLotto()
var correctNumbers = [Int]()

for i in 1...myLottoNumbers.count{
    if lottoNumbers.contains(myLottoNumbers[i-1]){
        correctNumbers.append(myLottoNumbers[i-1])
    }
}

if correctNumbers.count != 0 {
    print("축하합니다! 겹치는 번호는 ",terminator: "")
    for i in correctNumbers{
        print(i, terminator: "")
        if correctNumbers[correctNumbers.count-1] == i{
            print(" ",terminator: "")
        }
        else if correctNumbers.count > 1{
            print(",",terminator: " ")
        }
        else{
            print(" ",terminator: "")
        }
    }
    print("입니다!")
}
else{
    print("아쉽지만 겹치는 번호가 없습니다.")
}
