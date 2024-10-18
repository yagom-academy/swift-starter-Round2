//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Reimos on 10/11/24.
//

var lottoDraws: [Int: Set<Int>] = [:]
var randomLottoArray: Set<Int> = []

func makeLottoDraw(_ choice: Int)  {
    
    while randomLottoArray.count < 7 {
        let randomLottoNumbers = Int.random(in: 1...45)
        randomLottoArray.insert(randomLottoNumbers)
    }
    
    for i in 1...6 {
        lottoDraws[i] = randomLottoArray
    }
    
    guard let lottoDic = lottoDraws[choice] else {
        return
    }
    
    let lottoNumbers = lottoDic.sorted().map { String($0) }.joined(separator: ", ")
        print("\(choice)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다.")
    
}
