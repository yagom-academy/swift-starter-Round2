func makeWinningLottoNumbers() -> [Int] {
    var winningLottoNumbers = Set<Int>()
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return winningLottoNumbers.sorted()
}

func checkMyLottoNumbers(_ myLottoNumbers: [Int]) {
    let winningLottoNumbers = makeWinningLottoNumbers()
    print("이번 당첨번호: \(winningLottoNumbers)")
    var sameNumbers: [Int] = []
    
    for number in myLottoNumbers {
        if winningLottoNumbers.contains(number) {
            sameNumbers.append(number)
        }
    }
    if sameNumbers.count >= 1 {
        print("축하합니다! 겹치는 번호는 \(sameNumbers.map {String($0)}.joined(separator: ",")) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func recordWinningLottoNumbers(_ round: Int) {
    for time in 1...round {
        lottoRecord["\(time)회차"] = makeWinningLottoNumbers()
        print("\(time)회차:", lottoRecord["\(time)회차"] ?? 0)
    }
}

func searchWinningLottoNumbers(_ search: Int) {
    if let searchRound = lottoRecord["\(search)회차"] {
        print("\(search)회차의 로또 당첨 번호는 \(searchRound.map {String($0)}.joined(separator: ", ")) 입니다.")
    } else {
        print("해당 회차 번호가 없습니다.")
    }
}

var lottoRecord = [String: [Int]]()
recordWinningLottoNumbers(7)
searchWinningLottoNumbers(4)
