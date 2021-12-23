func getListOfWinNumbers(count: Int) -> [String: [Int]] {
    var winNumbersList: [String: [Int]] = [:]

    for _ in 1...count {
        winNumbersList["\(winNumbersList.count + 1)회차"] = generateLottoNumbers().sorted()
    }
    return winNumbersList
}

func printNthOfList(N: Int, list: [String: [Int]]) {
    
    if let nthNumbers = list["\(N)회차"] {
        print("\(N)회차의 로또 당첨 번호는 \(changeArrayToString(nthNumbers)) 입니다.")
    } else {
        print("\(N)회차 번호 소환에 실패!")
    }
}
