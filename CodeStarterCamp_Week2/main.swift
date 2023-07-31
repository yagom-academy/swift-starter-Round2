import Foundation


//step3


var lottoNumbers: Set<Int> = []
var resultNumbers: [String : Set<Int>] = [:]

func makeLottoNumbers() {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

func storeLottoNumbers() {
    makeLottoNumbers()
    for _ in 0..<5 {
        resultNumbers["\(resultNumbers.keys.count + 1)회차"] = lottoNumbers
    }
}

func printWinningNumbers(round: Int) {
    storeLottoNumbers()
    let winningNumbers = lottoNumbers.map { String($0) }.joined(separator: ", ")
    if let checkNumbers = resultNumbers["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(winningNumbers) 입니다.")
    }else {
        print("해당 회차의 로또 당첨 번호는 없습니다.")
    }
}

printWinningNumbers(round: 2)
