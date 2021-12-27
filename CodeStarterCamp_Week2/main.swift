
import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func answerLottoNumbers() -> Set<Int> {
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
    //로또 정답번호와 나의 번호를 비교해서 일치하는 번호를 담아놓는 변수
    var countMatch: [Int] = []
    
    //
    for index in 0...(my.count-1){
        if answer.contains(my[index]){
            countMatch.append(my[index])
        }
    }
    
    if countMatch.count > 0 {
        var resultSentence: String = "축하합니다! 겹치는 번호는 "
        
        for index in 0...countMatch.count-1 {
            resultSentence = resultSentence + String(countMatch[index]) + ", "
        }
        
        resultSentence = resultSentence.dropLast(2) + " 입니다."
        print(resultSentence)
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

compareLotto(myLottoNumbers: myLottoNumbers, answerLottoNumbers: answerLottoNumbers())


