//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

func createLottoNumbers(_ lottoSize:Int) -> [Int] {
    var lottoNumbers: [Int] = []

    while lottoNumbers.count != lottoSize {
        let randNumber: Int = Int(arc4random_uniform(45)) + 1

        if lottoNumbers.firstIndex(of: randNumber) == nil {
            lottoNumbers.append(randNumber)
        }
    }

    return lottoNumbers
}

func confirmLottoNumbers(myNumbers myLottoNumbers:[Int], lottoNumbers createdLottoNumbers:[Int]) -> String {
//    고차함수 이용 구현
//    let winNumbers: [Int] = myLottoNumbers.filter{ createdLottoNumbers.contains($0) }
//
//    if winNumbers.count > 0 {
//        return "축하합니다. 겹치는 번호는 \(winNumbers.map{ String($0) }.joined(separator: ", ")) 입니다"
//    } else {
//        return "아쉽지만 겹치는 번호가 없습니다."
//    }
    
    var resultNumbers: [Int] = []
    
    for value in myLottoNumbers {
        if createdLottoNumbers.contains(value) {
            resultNumbers.append(value)
        }
    }
    
    if resultNumbers.count > 0 {
        var resultStr: String = ""
        for value in resultNumbers {
            if resultNumbers.first == value  {
                resultStr.append("\(value)")
            } else {
                resultStr.append(", \(value)")
            }
        }
        return "축하합니다. 겹치는 번호는 \(resultStr) 입니다"
    } else {
        return "아쉽지만 겹치는 번호가 없습니다."
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

print(confirmLottoNumbers(myNumbers: myLottoNumbers, lottoNumbers: createLottoNumbers(6)))

