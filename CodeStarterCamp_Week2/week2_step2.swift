func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func getMatchedNumbers(winNumbers: Set<Int>, myNumbers: Set<Int>) -> Set<Int> {
    return winNumbers.intersection(myNumbers)
}

func fromSetToString(from: Set<Int>) -> String {
    var to = String()
    for item in from {
        to.append("\(item), ")
    }
    to.removeLast(2)
    return to
}

func printResult(numbers: Set<Int>) {
    if numbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(fromSetToString(from: numbers)) 입니다!")
    }
}
