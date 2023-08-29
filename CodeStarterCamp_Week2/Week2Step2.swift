//
//  Week2Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by 홍세희 on 2023/08/28.
//


var myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]


func generateRandomNumbers() -> Set<Int> {
    var thisWeekLottoNumbers: Set<Int> = []
    var popNumber: Int
    
    while thisWeekLottoNumbers.count < 6 {
        popNumber = Int.random(in: 1...45)
        thisWeekLottoNumbers.insert(popNumber)
    }
    save(thisWeekLottoNumbers: thisWeekLottoNumbers)
    return thisWeekLottoNumbers
}


func compare(_ myLottoNumbers: Set<Int>, with thisWeekLottoNumbers: Set<Int>) {
    var correctLottoNumbers: Set<Int> = []
    correctLottoNumbers = myLottoNumbers.intersection(thisWeekLottoNumbers)
    
    if correctLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다!")
    } else {
        var numberString: String
        numberString = correctLottoNumbers.map({ String($0) }).joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(numberString) 입니다!")
    }
}


