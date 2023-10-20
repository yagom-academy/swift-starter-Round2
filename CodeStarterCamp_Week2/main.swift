func generateLottoNumbers() -> [Int] {
    var lottoNumbers = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    let sortedLottoNumbers = lottoNumbers.sorted()
    return sortedLottoNumbers
}



let myLottoNumbers: [Int] = [20, 30, 15, 21, 40, 3]


func lookMatchingNumbers() {
    let lottoResult = generateLottoNumbers()
    print("로또 당첨 번호: \(lottoResult)")
    let matchingNumbers = Set(myLottoNumbers).intersection(lottoResult)
    if Set(myLottoNumbers) != Set(lottoResult) {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else if  Set(myLottoNumbers) == Set(lottoResult) {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers.sorted()) 입니다!")
    }
        
}




lookMatchingNumbers()
