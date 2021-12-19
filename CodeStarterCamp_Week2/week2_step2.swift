func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func getMatchedNumbers(win: Set<Int>, my: Set<Int>) -> [Int] {
    return win.intersection(my).sorted()
}

func changeArrayToString(from: [Int]) -> String {
    var to = String()
    for number in from {
        to.append("\(number), ")
    }
    to.removeLast(2)
    return to
}

func printResultOfLotto(matchedNumbers: [Int]) {
    if matchedNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(changeArrayToString(from: matchedNumbers)) 입니다!")
    }
}
