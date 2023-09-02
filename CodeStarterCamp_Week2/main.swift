import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers: Set<Int> = Set<Int>()
var a = 0

while lottoNumbers.count < 6 {
    lottoNumbers.insert(Int.random(in: 1...45))
}

for i in myLottoNumbers {
    if lottoNumbers.contains(i) {
        a = a + 1
    }
}

if a == 6 {
    print("축하합니다! 겹치는 번호는 ", terminator: "")
    for i in 0...5 {
        if i == 5 {
            print(myLottoNumbers[i], "입니다.")
        } else {
            print(myLottoNumbers[i], terminator: ", ")
        }
    }
} else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}