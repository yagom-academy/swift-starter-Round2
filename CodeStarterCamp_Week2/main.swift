import Foundation

func generateLottoNumber() -> [Int] {
    let shuffledNumbers: [Int] = (1...45).shuffled()
    let lottoNumber: [Int] = Array(shuffledNumbers[0...5])
        
    return lottoNumber
}

func checkLottoNumber(compare lottoNumber: [Int], with myLottoNumber: [Int]) {
    var hitNumbers: [String] = []
    
    for number in myLottoNumber {
        if lottoNumber.contains(number) {
            hitNumbers.append(String(number))
        }
    }

    if hitNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    else {
        print("축하합니다! 겹치는 번호는 \(hitNumbers.joined(separator: ", ")) 입니다!")
    }
            
}


print(generateLottoNumber())

//let lottoNumber = generateLottoNumber()
//let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]
//
//checkLottoNumber(compare: lottoNumber, with: myLottoNumber)
