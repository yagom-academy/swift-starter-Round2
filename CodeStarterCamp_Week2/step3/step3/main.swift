var lottoResults: [String: Set<Int>] = [:]

func generateLottoResult() {
    let previousRound = lottoResults.keys.count + 1
    
    var lottoNumbers: Set<Int> = Set()
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    lottoResults["\(previousRound)회차"] = lottoNumbers
}

for _ in 1...5 {
    generateLottoResult()
}

let desiredRound = "2회차"
if let lottoResult = lottoResults[desiredRound] {
    let lottoResultString = lottoResult.sorted().map { String($0) }.joined(separator: ", ")
    print("\(desiredRound)의 로또 당첨 번호는 \(lottoResultString) 입니다.")
}


