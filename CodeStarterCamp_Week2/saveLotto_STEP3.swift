
func makeLottoNumbers() -> [Int] {
    let initNumbers = Array(1...45)
    let lottoNumbers = initNumbers.shuffled()[0...5].sorted()

    return lottoNumbers
}

func saveLottoNumbers(totalCount: Int) -> [String: [Int]] {
    var savedLotto: [String: [Int]] = [:]
    
    for count in 1...totalCount {
        savedLotto["\(count)회차"] = makeLottoNumbers()
    }
    return savedLotto
}
