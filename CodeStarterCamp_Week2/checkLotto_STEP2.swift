
func makeLottoNumbers() -> Array<Int> {
    let initNumbers = [Int](1...45)
    let lottoNumbers = initNumbers.shuffled()[0...5].sorted()
    
    return lottoNumbers
}

let myLottoNumbers: [Int] = [2, 3, 11, 21, 30, 43]

func checkNumbers() {
    let setLottNumbers = Set<Int>(makeLottoNumbers())
    let setMyLottoNumbers = Set<Int>(myLottoNumbers)
    
    let stringLottoNumbers = setLottNumbers.sorted().map {String($0)}.joined(separator: ", ")
    let stringMyLottoNumbers = myLottoNumbers.map {String($0)}.joined(separator: ", ")
    
    print("이번 주 로또 번호는 \(stringLottoNumbers) 입니다.")
    print("당신이 선택한 번호는 \(stringMyLottoNumbers) 입니다.")
    
    let intersectionNumbers = Array<Int>(setLottNumbers.intersection(setMyLottoNumbers))
    let stringIntersectionNumbers = intersectionNumbers.sorted().map {String($0)}.joined(separator: ", ")

    switch intersectionNumbers.count {
    case 0:
        print("아쉽지만 겹치는 번호가 없습니다.")
    case 1..<7:
        print("축하합니다! 겹치는 번호는 \(stringIntersectionNumbers) 입니다!")
    default:
        print("unknown")
    }
}

