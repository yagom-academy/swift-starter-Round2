func runLotto(iteration: Int) {
    for _ in 1...iteration {
        lottoResults["\(lottoResults.count + 1)회차"] = generateLottoNumbers()
    }
}

func checkLottoNumbers(round: Int) {
    guard let lottoNumbers = lottoResults["\(round)회차"] else {
        print("해당 회차 로또 번호가 존재하지 않습니다.")
        return
    }
    
    print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers.map{String($0)}.joined(separator: ", ")) 입니다.")
}
