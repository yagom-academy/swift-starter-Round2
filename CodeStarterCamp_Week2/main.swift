//
//  makeLottoGame.swift
//  CodeStarterCamp_Week2
//
//  Created by 방선우 on 2022/04/27.
//

import Foundation
//MARK: - 로또 번호 생성
func  makeLottoNumberCollection(_ number: Int) -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in:1...45))
    }
    
    return lottoNumbers
}

//MARK: - 로또 번호 매칭
func matchMyLottoNumbers() -> Array<String> {
    let myLottoNumbers: [Int] = [5, 1, 44, 35, 29, 10]
    let makeLottoNumberCollection = makeLottoNumberCollection(6)
    let winNumbers = makeLottoNumberCollection.intersection(Set(myLottoNumbers)).map{String($0)}
    
    return winNumbers
}

//MARK: - 당첨유무 멘트
func sayResultOfWin() {
    let match = matchMyLottoNumbers()
    let matchjoin = match.joined(separator: ", ")
    
    if match.count > 0 {
        print("축하합니다! 겹치는 번호는 \(matchjoin) 입니다.")
    } else {
        print("아쉽지만 겹치는 숫자가 없습니다.")
    }
}

sayResultOfWin()
