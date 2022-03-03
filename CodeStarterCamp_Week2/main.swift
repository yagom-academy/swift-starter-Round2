import Foundation

func generateNumber() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
            lottoNumbers.insert(randomNumber)
    }
    returb lottoNumbers
}

func storeNumber(count: Int, printCount: Int) {
    lottoDictionary["\(count+1)회차"] = lottoNumbers
    if printCount == count+1 {
        if let lotto = lottoDictionary["\(printCount)회차"] {
            print("\(printCount)회차의 로또 당첨 번호는",lotto,terminator: "입니다.\n")
        }
    }
}

func operateFunction(lottoCount: Int) {
    for count in 0...lottoCount-1 {
        storeNumber(count: count, printCount: 2)
    }
}

let myLottoNumbers: [Int] = [12,24,32,41,5,16]
var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()
operateFunction(lottoCount: 6)
