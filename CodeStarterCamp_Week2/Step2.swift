import Foundation

var lottoSet = Set<Int>()
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

// 로또번호를 만들어주는 함수
func makeLottoSet() {
    while lottoSet.count != 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoSet.insert(randomNumber)
    }
    print("당첨번호는 \(lottoSet)입니다.")
}

//로또번호 일치하는지 확인시켜주는 함수
func checkLottoNumbers() {
    var correctNumber = [String]() // 일치하는 번호들을 넣기 위한 빈 배열
    
    for number in myLottoNumbers {
        if lottoSet.contains(number) {
            correctNumber.append(String(number))
        }
    }
        
    if correctNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let joinedCorrectNumber = correctNumber.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(joinedCorrectNumber) 입니다")
    }
}

func resultStep2() {
    makeLottoSet()
    checkLottoNumbers()
}
