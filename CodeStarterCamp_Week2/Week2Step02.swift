import Foundation

func generateNumber(){
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
            lottoNumbers.insert(randomNumber)
    }
}

func checkNumber(){
    let intersection: Set<Int> = lottoNumbers.intersection(myLottoNumbers)
    if intersection.count == 0 {
            print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는",intersection,terminator: "입니다!\n")
    }
}

var lottoNumbers: Set<Int> = Set<Int>()
generateNumber()
print("<당첨번호>\n", lottoNumbers)
let myLottoNumbers: [Int] = [12,24,32,41,5,16]
checkNumber()

