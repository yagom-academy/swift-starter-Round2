import Foundation

var lottoNumbers = [String : Array<Int>]()
func makeFiveRoundLottoNumbers() {
    for round in 1...5 {
        let lottoNumbersList = Array(makeLottoNumbers())
        lottoNumbers["\(round)회차"] = lottoNumbersList
    }
    print(lottoNumbers)
}


func makeLottoNumbers() -> Set<Int> {
    var lottoNumbersList = Set<Int>()
        while (lottoNumbersList.count < 6) {
            lottoNumbersList.insert(Int.random(in: 1...45))
        }
    return lottoNumbersList
}

func printLottoResult(round: Int) {
    if let lottoNumber = lottoNumbers["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumber.map{String($0)}.joined(separator:", ")) 입니다.")
    }
}
makeFiveRoundLottoNumbers()
printLottoResult(round: 3)


