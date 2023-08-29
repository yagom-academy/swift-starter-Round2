//
//  Week2Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 홍세희 on 2023/08/29.
//

var allLottoNumberStorage: Dictionary<String , Set<Int>> = [String : Set<Int>]()
var count: Int = 0

func save(thisWeekLottoNumbers: Set<Int>) {
    count += 1
    allLottoNumberStorage["\(count)회차"] = thisWeekLottoNumbers
}

//알고 싶은 회차 입력 매개변수 -> "(알고싶은 회차의 숫자)회차"로 입력
func findWhatLottoNumbers(week: String) {
    if let _ = allLottoNumberStorage[week] {
        var numberString: String
        numberString = (allLottoNumberStorage[week]!).map({ String($0) }).joined(separator: ", ")
        print(week + "의 로또 당첨 번호는 \(numberString) 입니다. ")
        
    } else {
        print(week + "는 저장되어있지 않습니다.")
    }
}
