var lottoList: Dictionary<String, Array> = [String: Array<Int>]()

func addRandomNumbers() -> Array<Int>{
    var randomNumbers: Array<Int> = []
    
    while randomNumbers.count < 6 {
        randomNumbers.append(Int.random(in: 1...45))
    }
    return randomNumbers
}

func addLottoTurn(count : Int) {
    for turn in 1...count {
        lottoList["\(turn)회차"] = addRandomNumbers()
    }
}

func searchLottoTurn(count: Int, turn: Int, randomNumbers: [Int]) {
    addLottoTurn(count: count)
    
    if let randomNumbers = lottoList["\(turn)회차"] {
        let stringArray = randomNumbers.map { String($0) }
        let addSeparator = stringArray.joined(separator: ", ")
        print("\(turn)회차의 로또 당첨 번호는 \(addSeparator) 입니다!")
    }
    else {
        print("원하시는 회차는 아직 진행되지 않았습니다.")
    }
}

searchLottoTurn(count: 5, turn: 3, randomNumbers: addRandomNumbers())


