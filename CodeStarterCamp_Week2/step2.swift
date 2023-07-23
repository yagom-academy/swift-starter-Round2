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
    if lottoNumbers.intersection(myLottoNumbers) != [] {
        print("축하합니다! 겹치는 번호는 \((lottoNumbers.intersection(myLottoNumbers)).sorted())입니다!")
    }else {
        print("아쉽지만 겹치는 번호는 없습니다.")
    }
}
