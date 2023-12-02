//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
// 나의 로또 번호
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let numbers = Array(1...45)

func createLottoNumbers() ->Set<Int>{

    var createLottoNumbers: Set<Int> = [] // 순서가 없고 멤버가 유일한 것을 보장 (중복을 막음)
    
    while createLottoNumbers.count < 6 {
        createLottoNumbers.insert(numbers.randomElement()!)
        //numbers배열에서 랜덤요소를 createLottoNumbers에 인서트함
    }
    return createLottoNumbers //당첨번호를 반환함
}
// 로또 번호 비교 함수
func compareLottoNumber(){
    var resultLottoNumber: Array<Int> = [] //겹치는 로또번호를 저장할 배열
    var lottoNumber: String = "" // 겹치는 로또 번호를 문자열로 저장할 변수를 빈 문자열로 초기화
    let createLotto = createLottoNumbers() //당첨번호 저장
    
    for num in myLottoNumbers{
        if createLotto.contains(num){ //num가 포함되어있는지를 확인
            resultLottoNumber.append(num)//배열에 num을 추가
        }
    }
    
    guard !resultLottoNumber.isEmpty else{ //배열이 비어있지않은지를 확인 비어있는경우 메시지출력
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    
    for number in resultLottoNumber{
        lottoNumber.append("\(number),") //문자열로 변환하여 추가
    }
    
    lottoNumber.removeLast() // 마지막문자 ,를 제거
    print("축하합니다.! 겹치는 번호는 \(lottoNumber) 입니다!")
    
}

compareLottoNumber()
