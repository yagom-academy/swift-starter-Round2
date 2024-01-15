func lottoNumber() -> Array<Int> {
    var lottoNumbers = [Int]()
        while lottoNumbers.count < 6 {
            var randomNumber = Int.random(in: 1...45)
            if lottoNumbers.contains(randomNumber){
                continue
            } else {
                lottoNumbers.append(randomNumber)
            }
            lottoNumbers.sort()
        }
    return lottoNumbers
    }
var lottoNumbers = lottoNumber()
var myNumbers: [Int] = [1,2,3,4,5,6]

func checkLotto(lottoNumbers: [Int], myNumbers: [Int]) -> [Int] {
    lottoNumber()
    
    var duplicates: [Int] = []

    for value in lottoNumbers {
        if myNumbers.contains(value) {
            duplicates.append(value)
        }
    }

    return duplicates
}

let matchNumbers = checkLotto(lottoNumbers: lottoNumbers, myNumbers: myNumbers)

print("로또 번호 :", lottoNumbers)
print("나의 번호 :", myNumbers)

if matchNumbers.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(matchNumbers)"+"입니다")
}


lottoNumber()

