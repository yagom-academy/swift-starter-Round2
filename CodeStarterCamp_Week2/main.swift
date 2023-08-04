import Foundation
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers = Set<Int>()

func makeLottoNumbers() {
    while (lottoNumbers.count < 6) {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

func getCorrectNumbers() -> [Int] {
    var correctNumbers: [Int] = []
    for numbers in 0...lottoNumbers.count-1 {
           if lottoNumbers.contains(myLottoNumbers[numbers]) {
                correctNumbers.append(myLottoNumbers[numbers])
        }
    }
    return correctNumbers
}
func correctNumbersArrayToString(correctNumbers: [Int]) -> String {
    var correctNumbersList : String = ""
    for index in 0...correctNumbers.count-1 {
        if correctNumbersList == "" {
            correctNumbersList = correctNumbersList + "\(correctNumbers[index])"
        }
        else {
            correctNumbersList = correctNumbersList + ", " + "\(correctNumbers[index])"
        }
    }
    return correctNumbersList
}
func printLottoResult() {
    var correctNumbers = [Int]()
    var correctNumbersList : String = ""
    makeLottoNumbers()
    correctNumbers = getCorrectNumbers()
    guard !(correctNumbers.isEmpty) else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    correctNumbersList = correctNumbersArrayToString(correctNumbers: correctNumbers)
    print("축하합니다! 겹치는 번호는 \(correctNumbersList) 입니다!")
}
printLottoResult()


