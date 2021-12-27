func getListOfWinNumbers(count: Int) -> [String: [Int]] {
    var winNumbersList: [String: [Int]] = [:]

    for _ in 1...count {
        winNumbersList["\(winNumbersList.count + 1)회차"] = generateLottoNumbers().sorted()
    }
    return winNumbersList
}

func printOneRoundOfLottoNumbers(round: Int) {
    if let lottoNumbers = listOfNumbers["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(changeArrayToString(lottoNumbers)) 입니다.")
    } else {
        print("\(round)회차 번호 소환에 실패!")
    }
}
