var lottoList: Dictionary<String, Array> = [String: Array<Int>]()

func addRandomNubers() -> Array<Int>{
    var randomNumbers: Array<Int> = []
    
    while randomNumbers.count < 6 {
        randomNumbers.append(Int.random(in: 1...45))
    }
    return randomNumbers
}

func wantLottoTurn(count: Int, wantTurn: Int, randomNubers: [Int]) {
    for turn in 1...count {
        lottoList["\(turn)회차"] = randomNubers
    }
    print(lottoList)
    if let randomNubers = lottoList["\(wantTurn)회차"] {
            print("\(wantTurn)회차의 로또 당첨 번호는", randomNubers)
              }
    else {
        print("아직 진행되지 않았습니다.")
    }
}

//func addLottoTurn(count: Int) {
//
//    for turn in 1...count {
//        lottoList[turn] = randomNumbers
//    }
//    print(lottoList)
//}
//
//func findLottoTurn(wantTurn: Int) {
//    if let wantList = lottoList[wantTurn] {
//
//    }
//}


wantLottoTurn(count: 10, wantTurn: 4, randomNubers: addRandomNubers())


