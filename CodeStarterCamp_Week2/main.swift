
import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func anserLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let targetNumber = Int.random(in: 1...45)
        
        if !lottoNumbers.contains(targetNumber){
           lottoNumbers.insert(targetNumber)
        }
    }
    
    return lottoNumbers
}

func compareLotto(myLottoNumbers my: Array<Int>,answerLottoNumbers answer: Set<Int>){
    var countMatch: [Int] = []
    
    for index in 0...(my.count-1){
        if answer.contains(my[index]){
            countMatch.append(my[index])
        }
    }
    
    if countMatch.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        if countMatch.count > 2 {
         for index in 0...countMatch.count-2{
            print("\(countMatch[index]), ",terminator: "")
         }
        }
        print("\(countMatch[countMatch.count-1]) 입니다!")
    } else {
     print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

compareLotto(myLottoNumbers: myLottoNumbers, answerLottoNumbers: anserLottoNumbers())


