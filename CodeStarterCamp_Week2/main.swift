import Foundation

func generateNumber() {
    lottoNumbers = Set<Int>()
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
            lottoNumbers.insert(randomNumber)
    }
}

func storeNumber(count: Int, printCount: Int) {
    lottoDictionary["\(count)회차"] = lottoNumbers
    if printCount == count {
        if let lotto = lottoDictionary["\(printCount)회차"] {
            print("\(printCount)회차의 로또 당첨 번호는",lotto,terminator: "입니다.\n")
        }
    }
}

func operateFunction() {
    var count: Int = 0
    for _ in 1...6 {
        count += 1
        generateNumber()
        storeNumber(count: count, printCount: 2)
    }
}

var lottoNumbers: Set<Int> = Set<Int>()
let myLottoNumbers: [Int] = [12,24,32,41,5,16]
var lottoDictionary: Dictionary<String, Set<Int>> = [String: Set<Int>]()
operateFunction()
