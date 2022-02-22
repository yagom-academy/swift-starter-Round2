//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 지상률 on 2022/02/17.
//

import Foundation

//로또 당첨 번호를 생성하는 함수
func makeLottoNumbers()-> Set<Int>{
    var emptyLotto : Set<Int> = Set<Int>()
    while emptyLotto.count < 6{
        let number = Int.random(in: 1...45)
        emptyLotto.insert(number)
    }
    return emptyLotto
}


//찍은 번호와 로또 당첨 번호의 겹치는 숫자를 확인하는 함수
func checkExactNumbers(myLottoNumbers:[Int]){
    var exactNumbers: [Int] = []
    let fullLotto : Set<Int> = makeLottoNumbers()
    for checkMyLotto in myLottoNumbers{
        for lottoNumbers in fullLotto{
            if checkMyLotto == lottoNumbers{
                exactNumbers.append(lottoNumbers)
            }
        }
    }
    print(fullLotto)//로또 번호를 출력합니다.
    if exactNumbers.isEmpty == true {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }else{
        print("축하합니다! 겹치는 번호는 \(exactNumbers) 입니다.")
    }
}

//생성된 로또번호와 내가 찍은 번호를 확인하여 결과를 알려주는 함수
func drawAndCheckLottoNumbers(myLottoNumbers : [Int]){
    checkExactNumbers(myLottoNumbers: myLottoNumbers)
}
