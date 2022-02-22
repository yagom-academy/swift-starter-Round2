//
//  Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 지상률 on 2022/02/22.
//

import Foundation

func makeLottoNumbers()-> Set<Int>{
    var emptyLotto: Set<Int> = Set<Int>()
    while emptyLotto.count < 6{
        let number = Int.random(in: 1...45)
        emptyLotto.insert(number)
    }
    return emptyLotto
}

func makeLottoDictionary(totalDraw : Int)-> [Int : Set<Int>]{
    var emptyDictionary : [Int : Set<Int>] = [:]
    for draw in 1...totalDraw {
        emptyDictionary[draw] = makeLottoNumbers()
        //Array값이 하나씩 들어가면서 makeLottoNumbers 함수를 실행하여 나온 return값을 dictionary에 저장한다.
    }
    return emptyDictionary
}

func callLottoHistory(callWantDraw : Int, totalDraw : Int){
    let fullDictionary : [Int : Set<Int>] = makeLottoDictionary(totalDraw: totalDraw)
    if let fullDictionary = fullDictionary[callWantDraw]{
        print("\(callWantDraw)회차의 로또 당첨 번호는 \(fullDictionary)")
    }else{
        print("해당 회차는 존재하지 않습니다.")
    }//if let을 이용한 옵셔널 바인딩 사용
    
}

func saveAndCallLottoHistory(callWantDraw : Int, totalDraw : Int){
    callLottoHistory(callWantDraw: callWantDraw, totalDraw: totalDraw)
}


