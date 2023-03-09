//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let lottoNumbers = pickLottoNumbers()
let myLottoNumbers = [1, 2, 3, 4, 5, 6]

func pickLottoNumbers() -> Set<Int> {
    var lottoNumbers = Set<Int>()
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}

func compareSameNumbers(_ lottoNumbers: Set<Int>, with myLottoNumbers: Array<Int>) -> Set<Int> {
    let sameNumbers: Set<Int> = Set(myLottoNumbers).intersection(lottoNumbers)
    
    return sameNumbers
}

func printSameNumbers(lottoNumbers: Set<Int>, myLottoNumbers: Array<Int>) {
    if compareSameNumbers(lottoNumbers, with: myLottoNumbers).count > 0 {
        
        var StringSameNumbers = [String]()
        
        for num in compareSameNumbers(lottoNumbers, with: myLottoNumbers) {
            StringSameNumbers.append(String(num))
        }
        
        StringSameNumbers.sort()
        
        print("축하합니다! 겹치는 번호는 \(StringSameNumbers.joined(separator: ", ")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

//step3
func saveLottoNumbers() -> Dictionary<String, Array<Int>> {
    var lottoNumbersSavings: [String: Array<Int>] = [:]
    
    for turn in 1...5 {
        lottoNumbersSavings[String(turn)+"회차"] = Array(pickLottoNumbers())
    }
    
    return lottoNumbersSavings
}

func showLottoTurns(turn: String) {
    if let lottoTurns : Array<Int> = saveLottoNumbers()[turn] {
        print(turn + "의 로또 당첨 번호는 " + lottoTurns.sorted().map{ String($0) }.joined(separator: ", ") + " 입니다." )
    } else {
        print("none")
    }
}

showLottoTurns(turn: "1회차")
