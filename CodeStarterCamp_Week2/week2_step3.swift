func getListOfWinNumbers(count: Int) -> [String: [Int]] {
    var winNumbersList: [String: [Int]] = [:]

    for _ in 1...count {
        winNumbersList["\(winNumbersList.count + 1)회차"] = generateLottoNumbers().sorted()
    }
    return winNumbersList
}
