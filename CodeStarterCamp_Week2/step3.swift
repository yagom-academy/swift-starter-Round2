func runLotto(iteration: Int) {
    for _ in 1...iteration {
        lastRound += 1
        lottoResults["\(lastRound)회차"] = generateLottoNumbers()
    }
}

func checkLottoNumbers(round: Int) -> String {
    guard let temporaryValue = lottoResults["\(round)회차"] else {
        return "해당 회차 로또 번호가 존재하지 않습니다."
    }
    
    let lottoNumbers = temporaryValue
    
    return "\(round)회차의 로또 당첨 번호는 \(lottoNumbers.map{String($0)}.joined(separator: ", ")) 입니다."
}
