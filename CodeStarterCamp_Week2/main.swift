
//로또번호 생성 함수
func createLotto() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
            lottoNumbers.insert(randomNumber)
    }
    return lottoNumbers
}

let myNumbers: Set<Int> = [1,2,3,4,5,6]

func printResult(myNumbers: Set<Int>) {
    let lottoNumbers = createLotto()
    let sortedLottoNumbers = lottoNumbers.sorted().map { String($0) }.joined(separator: ", ")
    let sortedMyNumbers = myNumbers.sorted().map { String($0) }.joined(separator: ", ")
    let sortedmatchNumbers = lottoNumbers.intersection(myNumbers).sorted().map { String($0) }.joined(separator: ", ")
    
    
    print("당첨 숫자 : \(sortedLottoNumbers) \n나의 숫자 : \(sortedMyNumbers)")
    
    if sortedmatchNumbers.isEmpty {
        print("아쉽지만 겹치는 숫자가 없습니다.")
    } else {
        print("축하합니다! 겹치는 숫자는 \(sortedmatchNumbers) 입니다!", separator: "")
    }
}
printResult(myNumbers: myNumbers)
