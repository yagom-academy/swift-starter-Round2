func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

func getMatchedNumbers(win: Set<Int>, my: Set<Int>) -> [Int] {
    let matchedNumbers = win.intersection(my)
    let sortedNumbers = matchedNumbers.sorted()
    return sortedNumbers
}

func changeArrayToString(_ from: [Int]) -> String {
    let to = from.map{String($0)}
    return to.joined(separator: ", ")
}

func printResultOfLotto(matchedNumbers: [Int]) {
    if matchedNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(changeArrayToString(matchedNumbers)) 입니다!")
    }
}
