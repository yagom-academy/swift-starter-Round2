import Foundation

var lottoNumber: [Int] = []

func createLottoNumbers() {
    while true {
        let randomNumber = Int.random(in: 1..<10)

        if lottoNumber.count == 6 {
            break
        }
        if lottoNumber.contains(randomNumber) == false {
            lottoNumber.append(randomNumber)
        }
    }
}

func compareWithNumber() {
    let myLottoNumbers: [Int] = [1,2,3,4,5,6]
    var winNumber: [Int] = []
    
    for number in 0...5 {
        if lottoNumber.contains(myLottoNumbers[number]) == true {
            winNumber.append(myLottoNumbers[number])
        }
    }
    
    if winNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let stringArray = winNumber.map { String($0) }
        print("축하합니다! 겹치는 번호는 \(stringArray.joined(separator: ",") ) 입니다!")
    }
}

createLottoNumbers()
compareWithNumber()
