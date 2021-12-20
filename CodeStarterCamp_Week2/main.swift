
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
    
    var prize: [Int] = []
    
    for index in 0...(my.count-1){
        if answer.contains(my[index]){
            prize.append(my[index])
        }
    }
    
    if prize.count>0 {
     print("축하합니다! 겹치는 번호는 \(prize) 입니다!")
    }
    else {
     print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

compareLotto(myLottoNumbers: myLottoNumbers, answerLottoNumbers: anserLottoNumbers())


