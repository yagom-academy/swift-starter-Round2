func makeRandomWinningLottoNumbers() -> [Int] {
    var randomWinningLottoNumbers = Set<Int>()
    while randomWinningLottoNumbers.count < 6 {
        randomWinningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return randomWinningLottoNumbers.sorted()
}

func checkMyLottoNumbers(_ myLottoNumbers: [Int] = myLottoNumbers) {
    var sameNumbers: [Int] = []
    for nums in myLottoNumbers {
        if winningLottoNumbers.contains(nums) == true {
            sameNumbers.append(nums)
        }
    }
    if sameNumbers.count >= 1 {
        print("축하합니다! 겹치는 번호는\(sameNumbers) 입니다!")
    } else if sameNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

let myLottoNumbers: [Int] = [9, 11, 20, 30, 32, 33]
var winningLottoNumbers = makeRandomWinningLottoNumbers()
print("이번 주 당첨번호: \(winningLottoNumbers)")
checkMyLottoNumbers(myLottoNumbers)

