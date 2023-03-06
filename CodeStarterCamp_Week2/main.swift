func makeWinningLottoNumbers() -> [Int] {
    var winningLottoNumbers = Set<Int>()
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return winningLottoNumbers.sorted()
}

func checkMyLottoNumbers(myLottoNumbers: [Int]) {
    let winningLottoNumbers = makeWinningLottoNumbers()
    print("이번 당첨번호: \(winningLottoNumbers)")
    var sameNumbers: [Int] = []
    
    for nums in myLottoNumbers {
        if winningLottoNumbers.contains(nums) == true {
            sameNumbers.append(nums)
        }
    }
    if sameNumbers.count >= 1 {
        print("축하합니다! 겹치는 번호는 \(sameNumbers.map {String($0)}.joined(separator: ",")) 입니다!")
    } else if sameNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

checkMyLottoNumbers(myLottoNumbers: [9, 11, 20, 30, 32, 33])
