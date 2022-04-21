
import Foundation

let totalLottoNumbers: [Int] = Array(1...45)
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var lottoNumbers: [Int] = []


func createLottoNumbers() {
    while lottoNumbers.count < 6 {
        let newNumber = totalLottoNumbers.randomElement()
        
        if !lottoNumbers.contains(newNumber!) {
            lottoNumbers.append(newNumber!)
        }
    }
}

func compareNumber(_ myLottoNumber: [Int], with lottoNumbers: [Int]) {

    var containNumbers: [Int] = [ ]
    
    for i in myLottoNumber {
        if myLottoNumber.contains(lottoNumbers[i-1]) {
            containNumbers.append(lottoNumbers[i-1])
        }
    }
    
    func convertIntArrayToStringArray(_ array: [Int]) -> [String] {
        let convertedStringArray = array.map({ (num: Int) -> String in
            return "\(num)"
        })
        
        return convertedStringArray
    }
    
    let containNumbersWithString = convertIntArrayToStringArray(containNumbers)
    
    if containNumbersWithString.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(containNumbersWithString.joined(separator: ", "))입니다.")
    }
}




createLottoNumbers()
compareNumber(myLottoNumbers, with: lottoNumbers)
