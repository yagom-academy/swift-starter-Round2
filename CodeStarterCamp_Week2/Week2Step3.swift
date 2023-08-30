//
//  Week2Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 홍세희 on 2023/08/29.
//

var lottoNumberStorage: [String : [Int]] = [:]
var count: Int = 0

func save(thisWeekLottoNumbers: Set<Int>) {
    count += 1
    let sortedThisWeekLottoNumbers = thisWeekLottoNumbers.sorted()
    lottoNumberStorage["\(count)회차"] = sortedThisWeekLottoNumbers
}

func findLottoNumbers(weekNumber: Int) {
    if let lottoNumbers = lottoNumberStorage["\(weekNumber)회차"] {
        let numberString = lottoNumbers.map({ String($0) }).joined(separator: ", ")
        print("\(weekNumber)회차의 로또 당첨 번호는 \(numberString) 입니다. ")
        
    } else {
        print("\(weekNumber)회차는 저장되어있지 않습니다.")
    }
}

func generateAndSave(for count: Int) {
    for _ in 1...count {
        save(thisWeekLottoNumbers: generateRandomNumbers())
    }
}
