import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var lottoNumber: [Int] = []
var winNumber: [Int] = []
let changeString = ""

func createLotto() {
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

createLotto()
compareWithNumber()
