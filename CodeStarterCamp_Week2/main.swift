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
    let lottoDict = storeLottoNumbers()
    
    if let myRoundLottoNumbers: Array<Int> = lottoDict["\(myRound)회차"] {
        let myRoundLottoNums = myRoundLottoNumbers.map{ String($0) }.joined(separator: ", ")
        print("\(myRound)회차의 로또 당첨 번호는 \(myRoundLottoNums) 입니다")
    } else {
        print("nil")
    }
}

printLottoNumbers(myRound: 2)
