var makingNumbers = Set<Int>()
var myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]

func generateRandomNumber()  {
    while makingNumbers.count < 6 {
        makingNumbers.insert(Int.random(in: 1...45))
    }
}

func checkLottoNumber() {
    let chosenNumber : Set<Int> = Set(makingNumbers).intersection(Set(myLottoNumbers))
    let joinedStr = chosenNumber.map { String($0) }.joined(separator: ", ")

    if chosenNumber.count == 0  {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(joinedStr) 입니다.")
    }
}
generateRandomNumber()
checkLottoNumber()

