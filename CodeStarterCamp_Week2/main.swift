import Foundation

// 로또 번호 생성 함수

func makeLottoNums() -> Set<Int> {
    var lotto: Set<Int> = []
    
    while lotto.count < 6 {
        let randomInt: Int = Int.random(in: 1...45)
        lotto.insert(randomInt)
    }
    
    return lotto
}

// 로또 번호 당첨 확인 함수

func checkMyLotto(myNumbers: [Int], realNumbers: Set<Int>) -> Void {
    
    let setMyNumbers: Set<Int> = Set(myNumbers)
    
    let intersectionLotto: Set<Int> = setMyNumbers.intersection(realNumbers)
    
    if intersectionLotto.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다")
    } else {
        let matchLotto: [String] = intersectionLotto.map{String($0)}
        let matchLottoString: String = matchLotto.joined(separator: ",")
        
        print("축하합니다! 겹치는 번호는 \(matchLottoString) 입니다! ")
    }
    
}

let lotto: Set<Int> = makeLottoNums()
let myLottoNumbers: [Int] = [39, 12, 15, 23, 45, 9]

checkMyLotto(myNumbers: myLottoNumbers, realNumbers: lotto)
