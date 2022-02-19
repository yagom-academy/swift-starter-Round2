var lottoHistory = [String?: Set<Int>]()


func generateRandomNumber() -> Set<Int> {
    var makingNumbers = Set<Int>()

    while makingNumbers.count < 6 {
    makingNumbers.insert(Int.random(in: 1...45))
}
    return makingNumbers
}


func saveLottoNumber(round: Int) {
    lottoHistory["\(round)회차"] = generateRandomNumber()
}

func playLottoNumber(endRound: Int) {
    for round in 1...endRound {
    saveLottoNumber(round: round)
    }
}

func searchLottoNumber(round: Int) {
    if let lottoLog = lottoHistory["\(round)회차"] {
        let joinedStr = lottoLog.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(joinedStr) 입니다.")
    }
}






