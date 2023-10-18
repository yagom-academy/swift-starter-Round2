//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func generateLottoNumbers() -> Set<Int> {
    var randomIntegers: Set<Int> = Set<Int>()
    
    repeat {
        let randomInteger: Int = Int.random(in: 1..<46)
        randomIntegers.insert(randomInteger)
    } while randomIntegers.count < 6
    
    return randomIntegers
}
var lottoDictionary: Dictionary<Int?, Set<Int>?> = [Int?: Set<Int>?]()
lottoDictionary = [:]

func saveLottoNumbers() {
    for count in 1...5{
        lottoDictionary[count] = generateLottoNumbers()
    }
}

func findLottoDrawing() {
    print("찾는 회차 입력 : ")
    if let inputValue = readLine(), let intValue = Int(inputValue) {
        if let lottoNumbers = lottoDictionary[intValue] {
            print("\(intValue)회차의 로또 당첨 번호는 \(lottoNumbers ?? Set<Int>()) 입니다.")
        } else {
            print("\(intValue)회차의 로또번호 추첨을 진행하지 않았습니다.")
        }
    } else {
        print("올바른 숫자를 입력하세요.")
    }
}

saveLottoNumbers()
findLottoDrawing()
