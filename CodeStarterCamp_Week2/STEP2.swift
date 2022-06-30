
import Foundation

//로또 번호 추첨
func makeLottoNumbers() -> Set<Int> {
    
    var lottoNumbers: Set<Int> = Set<Int>()
    
    while lottoNumbers.count<6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    return lottoNumbers
}

//로또 당첨 여부 조회
func compareLottoNumbers() {
    let myLottoNumbers = lottoNumberFunc(number: [1,2,3,4,5,6])
    
    let sameLottoNumbers: Set<Int> = makeLottoNumbers().intersection(myLottoNumbers)
    
    let arraySameLottoNumbers : String = arrangeNumber(numbers: sameLottoNumbers)
    
    if sameLottoNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(arraySameLottoNumbers) 입니다!")
    }
}

func arrangeNumber(numbers : Set<Int>) -> String {
    
    var arraylottoNumbers : [String] = []
    
    for numbers in numbers {
        arraylottoNumbers.append(String(numbers))
    }
    
    let resultNumbers = arraylottoNumbers.joined(separator: ", ")
    return resultNumbers
    
}



struct lottoNumbersStruct {
    var myLotto: [Int]
    init(myLotto: [Int]) {
        self.myLotto = myLotto
    }
    
}

func lottoNumberFunc(number: [Int]) -> [Int] {
    let lottoNumberStructMyLotto: lottoNumbersStruct = lottoNumbersStruct(myLotto: number)
    
    return lottoNumberStructMyLotto.myLotto
}

