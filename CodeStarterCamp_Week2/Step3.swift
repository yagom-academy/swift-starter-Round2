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

func makeTotalWeek(totalWeek : Int)-> [String]{
    var emptyArray : [String] = []
    for week in 1...totalWeek{
        emptyArray.append("\(week)회차")
    }
    return emptyArray
}

func makeLottoDictionary(totalWeek : Int)-> [String : Set<Int>]{
    var emptyDictionary : [String : Set<Int>] = [:]
    let fullArray : [String] = makeTotalWeek(totalWeek: totalWeek)
    for totalWeek in fullArray{
        emptyDictionary[totalWeek] = makeLottoNumbers()
        //Array값이 하나씩 들어가면서 makeLottoNumbers 함수를 실행하여 나온 return값을 dictionary에 저장한다.
    }
    return emptyDictionary
}

func callLottoHistory(callWantWeek : String, totalWeek : Int){
    let fullDictionary : [String : Set<Int>] = makeLottoDictionary(totalWeek: totalWeek)
    guard let fullDictionary = fullDictionary[callWantWeek] else{
        return
    }
    print("\(callWantWeek)의 로또 당첨 번호는 \(fullDictionary)")
}

func saveAndCallLottoHistory(totalWeek : Int, callWantWeek : String){
    callLottoHistory(callWantWeek: callWantWeek, totalWeek: totalWeek)
}


