import Foundation



func makeLottoNumbers() -> Set<Int> {
    var randomNumbers = Set<Int>()
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    print(randomNumbers)
    return randomNumbers
}
func collectLottoNumber()  {
    //비어있는 딕셔너리 생성
    var lottoNumberDictionary: Dictionary<Int, Set<Int>> = [Int: Set<Int>]()
    //makeLottoNumbers를 호출 해서 나온 번호를 입력 했습니다.
    //   ex) lottoDic[1] = makeLottoNumbers()
    lottoNumberDictionary[1] = [4, 12, 41, 1, 40, 34]
    lottoNumberDictionary[2] = [26, 27, 25, 4, 32, 22]
    lottoNumberDictionary[3] = [43, 30, 38, 23, 19, 34]
    lottoNumberDictionary[4] = [30, 26, 45, 34, 29, 1]
    lottoNumberDictionary[5] = [25, 4, 26, 10, 39, 13]
    // 회차순으로 정렬하기위해 작성 했습니다
    let keysortedDictionary = lottoNumberDictionary.sorted(by: { $0.0 < $1.0})
    //회차를 확인하기 위해 같이 프린트 했습니다
    for (key,value) in keysortedDictionary {
        print("\(key)회차 \(value)")
    }
    if let lottoNumberKey = lottoNumberDictionary[2] {
        print("2회차 로또 당첨 번호는\(lottoNumberKey)입니다")
    }
    
}

collectLottoNumber()
