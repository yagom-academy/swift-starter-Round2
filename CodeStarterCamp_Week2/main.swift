
import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func makeLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let targetNumber = Int.random(in: 1...45)
        
        if !lottoNumbers.contains(targetNumber){
           lottoNumbers.insert(targetNumber)
        }
    }
    
    return lottoNumbers
}


//n번째 로또 추출을 프린트 합니다.
func printLottoNDrow(maxDraw: Int, printDraw: Int){
    let subfix: String = "회차"
    var answerLottoDict: Dictionary<String, Set<Int>> = [:]
    
    for count in 1...maxDraw{
        answerLottoDict[String(count) + subfix] = makeLottoNumbers()
    }
    
    if let printTarget = answerLottoDict[String(printDraw) + subfix]{
        var resultSentence: String = String(printDraw) + "회차의 로또 당첨 번호는 "
        
        for indexLottoNum in printTarget {
            resultSentence = resultSentence + String(indexLottoNum) + ", "
        }
        resultSentence = resultSentence.dropLast(2) + " 입니다."
        print(resultSentence)
        
    } else {
        print("범위에서 벗어난 회차입니다!")
    }
            
}

//실행코드
printLottoNDrow(maxDraw: 5, printDraw: 2)

