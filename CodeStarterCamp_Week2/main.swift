var winningLottoNumbers: [Int: [Int]] = [:]
var nthTime: Int = 1
let targetNumber: Int = 4

func selectLottoNumbers() -> [Int] {
    var selectedWinningNumbers: [Int] = []
    
    repeat {
        selectedWinningNumbers.append(Int.random(in: 1...45))
    } while selectedWinningNumbers.count < 6
    return selectedWinningNumbers
}

func saveLottoNumbers(lottoArray: [Int]) {
    winningLottoNumbers[nthTime] = lottoArray
    nthTime += 1
}

var tempLottoArray: [Int] = []

for _ in 1...5 {
    tempLottoArray = selectLottoNumbers()
    saveLottoNumbers(lottoArray: tempLottoArray)
}

if let unwrapper = winningLottoNumbers[targetNumber] {
    print("\(targetNumber)회차의 로또 당첨 번호는 \(unwrapper.sorted().map{String($0)}.joined(separator: ", " ))입니다.")
}

