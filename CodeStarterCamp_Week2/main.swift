let myLottoNumbers: Set<Int> = [4, 5, 10, 18, 22, 32]
var winningLottoNumbers: [Int: Any] = [:]
var nthTime: Int = 1
let searchingNumber: Int = 4

func getLottoSet() {
    var selectedLottoNumbers: Set<Int> = []

    repeat {
        selectedLottoNumbers.insert(Int.random(in: 1...45))
    } while selectedLottoNumbers.count < 6
    
    winningLottoNumbers[nthTime] = selectedLottoNumbers.sorted()
    nthTime += 1
}


getLottoSet()
getLottoSet()
getLottoSet()
getLottoSet()
getLottoSet()

var sortedWinningNumbers = winningLottoNumbers.sorted{$0.0 < $1.0}

print(sortedWinningNumbers)

if let lottoSet = winningLottoNumbers[searchingNumber] {
    print("\(searchingNumber)회차의 로또 당첨 번호는 \(lottoSet)입니다.")
}
else {
    print("해당 회차에 추첨된 번호가 없습니다. 1부터 5 사이의 회차를 입력하세요")
}
