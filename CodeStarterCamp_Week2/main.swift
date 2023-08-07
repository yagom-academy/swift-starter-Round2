import Foundation

var lottoNumbers = [String : Set<Int>]()
var round : Int = 1
func makeFiveRoundLottoNumbers() {
    for _ in stride(from: 1, through: 5, by: 1) {
        var lottoNumbersList = Set<Int>()
        while (lottoNumbersList.count < 6) {
            lottoNumbersList.insert(Int.random(in: 1...45))
        }
        lottoNumbers["\(round) + 회차"] = lottoNumbersList
        round = round + 1
    }
}
makeFiveRoundLottoNumbers()
round = 4
if let lottoNumber = lottoNumbers["\(round) + 회차"] {
    print("\(round)회차의 로또 당첨 번호는 \(lottoNumber.map{String($0)}.joined(separator:", ")) 입니다.")
}


