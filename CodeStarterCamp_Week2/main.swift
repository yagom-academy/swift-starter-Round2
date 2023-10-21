func generateLottoNumbers() -> [Int] {
    var lottoNumbers: Set<Int> = []
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...6)
        lottoNumbers.insert(randomNumber)
    }
    let sortedLottoNumbers = lottoNumbers.sorted()
    return sortedLottoNumbers
}



let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]


func findMatchingNumbers() {
    let lottoResult = generateLottoNumbers()
    print("로또 당첨 번호: \(lottoResult)")
    let matchingNumbers = Set(myLottoNumbers).intersection(lottoResult)
    if myLottoNumbers != lottoResult {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else if myLottoNumbers == lottoResult {
        let matchingNumbersString = matchingNumbers.sorted().map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchingNumbersString) 입니다!")
    }
}



findMatchingNumbers()


