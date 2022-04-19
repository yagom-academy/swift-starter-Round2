import Foundation

func lottoNumberGenerator() -> [Int] {
    var numbers: [Int] = []
    
    while numbers.count < 6 {
        let number = Int.random(in: 1...45)
        if numbers.contains(number) == false {
            numbers.append(number)
        }
    }
    //print(numbers)
    return numbers
}

func lottoNumberChecker(compare lottoNumber: [Int], with myLottoNumber: [Int]) {
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
        print("축하합니다! 겹치는 번호는 \(hitNumbers.joined(separator: " ,")) 입니다!")
    }

            
}

let lottoNumber = lottoNumberGenerator()
let myLottoNumber: [Int] = [1, 2, 3, 4, 5, 6]

lottoNumberChecker(compare: lottoNumber, with: myLottoNumber)




