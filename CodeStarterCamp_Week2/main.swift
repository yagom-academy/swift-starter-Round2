func generateLottoNumbers() -> Array<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    return Array(lottoNumbers)
}

func storeLottoNumbers() -> Dictionary<String, Array<Int>> {
    var lottoDictionary: Dictionary<String, Array<Int>> = [:]
    
    for round in 1...5 {
        lottoDictionary["\(round)회차"] = generateLottoNumbers()
    }
    
    return lottoDictionary
}

func printLottoNumbers(myRound: Int) {
    let lottoDictionary = storeLottoNumbers()
    
    if let myRoundLottoNumbers: Array<Int> = lottoDictionary["\(myRound)회차"] {
        let myRoundJoinedLottoNumbers = myRoundLottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(myRound)회차의 로또 당첨 번호는 \(myRoundJoinedLottoNumbers) 입니다")
    } else {
        print("해당 회차가 없습니다")
    }
}

printLottoNumbers(myRound: 2)
