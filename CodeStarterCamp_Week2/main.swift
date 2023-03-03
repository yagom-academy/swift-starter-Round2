var lottoList: Dictionary<String, Array> = [String: Array<Int>]()

func addRandomNubers() -> Array<Int>{
    var randomNumbers: Array<Int> = []
    
    while randomNumbers.count < 6 {
        randomNumbers.append(Int.random(in: 1...45))
    }
    return randomNumbers
}

func addLottoTurn(count : Int) {
    for turn in 1...count {
        lottoList["\(turn)회차"] = addRandomNubers()
    }
    print(lottoList)   // 회차번호끼리 값이 같은지에 대한 확인용
}

func wantLottoTurn(count: Int, wantTurn: Int, randomNubers: [Int]) {
    addLottoTurn(count: count)
    
    if let randomNubers = lottoList["\(wantTurn)회차"] {
           print("\(wantTurn)회차의 로또 당첨 번호는", randomNubers)
    }
    else {
        print("원하시는 회차는 아직 진행되지 않았습니다.")
    }
}

wantLottoTurn(count: 5, wantTurn: 3, randomNubers: addRandomNubers())


