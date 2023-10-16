
func makeLottoNumbers() -> [Int] {
    let initNumbers = Array(1...45)
    let lottoNumbers = initNumbers.shuffled()[0...5].sorted()

    return lottoNumbers
}

func saveLottoNumbers(totalCount: Int) -> [String: [Int]] {
    var savedLotto = [String: [Int]]()
    
    for count in 1...totalCount {
        savedLotto["\(count)회차"] = makeLottoNumbers()
    }
    return savedLotto
}

func showLottoNumbers(totalCount: Int, userCount: Int) {
    let savedLottos = saveLottoNumbers(totalCount: totalCount)
    
    guard let nonOptionalSavedLotto = savedLottos["\(userCount)회차"] else {
        return print("\(userCount)회차는 아직 진행되지 않았습니다.")
    }
    
    let removedBrackets = nonOptionalSavedLotto.map { String($0) }.joined(separator: ", ")

    print("\(userCount)회차의 로또 당첨 번호는 \(removedBrackets) 입니다.")
}

func start() {
    showLottoNumbers(totalCount: 5, userCount: 2)
}
