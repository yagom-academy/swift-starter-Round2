import Foundation


var lottoNumbers: Set<Int> = []

func makeLottoNumbers() {
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

var matchNumbers: [Int] = []

func generateMatchNumbers() {
    makeLottoNumbers()
    matchNumbers = lottoNumbers.intersection(myLottoNumbers).sorted()
}

func printMatchNumbers() {
    generateMatchNumbers()
    if matchNumbers.isEmpty {
        print("아쉽지만 겹치는 번호는 없습니다.")
    }else {
        let matchNumberList = (matchNumbers.map {String ($0)}).joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchNumberList) 입니다.")
    }
}

