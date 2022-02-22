import Foundation


var randomNumbers = Set<Int>()
func makeLottoNumbers()  -> Set<Int>{
    while randomNumbers.count < 6 {
        randomNumbers.insert(Int.random(in: 1...45))
    }
    print(randomNumbers)
    return randomNumbers
}

let myLottoNumbers: Set<Int> = makeLottoNumbers()
var printLottoNumber: Set<Int> = []
func compareMyLottonumbers() {
    
    //제가 찍은 로또번호 입니다 좋아하는 숫자들로 바꿔봤습니다!
    printLottoNumber = [3, 27, 10, 9, 13, 5]
    let collectionLottoNumbers: Set<Int> = myLottoNumbers.intersection(printLottoNumber)
    if collectionLottoNumbers.isEmpty {
        print("아쉽지만 꽝! 입니다 다음 기회에!")
    } else  {
        
        print("축하합니다 겹치는 번호는\(collectionLottoNumbers)입니다.")
    }
}
compareMyLottonumbers()
