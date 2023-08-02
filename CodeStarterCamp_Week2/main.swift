import Foundation


func makeLottoNumbers() -> Set<Int> {
    var LottoNumbers = Set<Int>()
    while (LottoNumbers.count < 6) {
        LottoNumbers.insert(Int.random(in: 1...45))
    }
    return LottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func compareNumbers(myLottoNumbers : [Int]) {
    let lottoNumbers = makeLottoNumbers()
    var correctNumbers: [Int] = []
    for numbers in 0...lottoNumbers.count-1 {
        if lottoNumbers.contains(myLottoNumbers[numbers]) {
            correctNumbers.append(myLottoNumbers[numbers])
        }
    }
    if correctNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        var overlappedNumbers: String = ""
        for i in 0...correctNumbers.count-1 {
            if overlappedNumbers == "" {
                overlappedNumbers = overlappedNumbers + "\(correctNumbers[i])"
            }
            else {
                overlappedNumbers = overlappedNumbers + ", " + "\(correctNumbers[i])"
            }
        }
        print("축하합니다! 겹치는 번호는 \(overlappedNumbers) 입니다!")
    }
}
compareNumbers(myLottoNumbers: myLottoNumbers)

