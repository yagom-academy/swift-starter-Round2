//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func generateLottoBox() -> Array<Int> {
    var lottoBox: Set<Int> = Set<Int>()
    
    while lottoBox.count < 6 {
        let randomNum: Int = Int.random(in: 1...45)
        
        lottoBox.insert(randomNum)
    }
    return Array(lottoBox)
}


func matchLotto(with lottoBox: () -> Array<Int>) {
    let myLottoNumbers: [Int] = [1,2,3,4,5,6]
    let winningNumbersBox: Array<Int> = myLottoNumbers.filter( { lottoBox().contains($0) } )
    let winningLottoNumbers: String = winningNumbersBox.map { String($0) }.joined(separator: ", ")

    if winningNumbersBox.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(winningLottoNumbers) 입니다!")
    }
}

matchLotto(with: generateLottoBox)




// 찍은 번호와 로또 당첨 번호 의 겹치는 숫자를 확인하는 함수를 생성합니다.
// 겹치는 번호를 포함하는 문구를 print합니다.
// 함수 내에서 print 하라는 의도일까? > 함수 호출하면 print 하라는 거로 이해

// 이 부분이 마음에 안드네... generateLotto 를 통해 return 받은 값을 저렇게 표현하는 것 말고 다른 방법이 있을까? > 매개변수로 받는 건 어떻게 하면 될 까? > 함수의 타입표현 이용
// let lottoNumbers: Array<Int> = generateLotto()

// let lottoNumbers: Array<Int> = box()

// let winningNumbersBox: Array<Int> = myLottoNumbers.filter( { lottoNumbers.contains($0) } )

// 함수명 checkLotto > 무엇으로 변경해볼까?
