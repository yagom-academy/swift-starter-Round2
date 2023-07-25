import Foundation


var lottoNumbers: Set<Int> = []

func makeLottoNumbers() {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func checkLottoNumbers() {
    makeLottoNumbers()
    let matchNumbers = lottoNumbers.intersection(myLottoNumbers).sorted()
    if matchNumbers.isEmpty {
        print("아쉽지만 겹치는 번호는 없습니다.")
    }else {
        print("축하합니다! 겹치는 번호는 \(matchNumbers.map{ String($0)}.joined(separator: ", ")) 입니다!")
    }
}

