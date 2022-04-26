import Foundation

func makeLottoNumbersFor(times numbers: Int) {
    for number in 1...numbers {
        var newLottoNumbers: [Int] = []
        newLottoNumbers = pickLottoNumbers()
        lottoNumbersDictionary["\(number)회차"] = newLottoNumbers
    }
}

func showLottoNumbersAt(order number: Int) {
    var arrayForShowingNumbers: [Int] = [ ]
    if number >= 1 && number <= lottoNumbersDictionary.count {
        if let numbers = lottoNumbersDictionary["\(number)회차"] {
            arrayForShowingNumbers = numbers
        } else {
            print("해당 회차의 로또번호를 찾을 수 없습니다.")
        }
    } else {
        print("해당 회차의 로또번호는 없거나, 찾고자 하는 회차 숫자가 양수가 아닙니다.")
    }
    let findingNumbersStringArray = convertStringArray(from: arrayForShowingNumbers)
    print("\(number)회차의 로또 당첨 번호는 \(findingNumbersStringArray.joined(separator: ", ")) 입니다.")
}

func pickLottoNumbers() -> [Int] {
    var lottoNumbers: [Int] = []
    var totalLottoNumbers: [Int] = Array(1...45)
    totalLottoNumbers.shuffle()
    totalLottoNumbers.removeSubrange(6...(totalLottoNumbers.count-1))
    lottoNumbers = totalLottoNumbers

    return lottoNumbers
}

func convertStringArray(from array: [Int]) -> [String] {
    var convertedStringArray: [String] = []
    for number in array {
        convertedStringArray.append(String(number))
    }

    return convertedStringArray
}

var lottoNumbersDictionary: [String: [Int]] = [: ]

makeLottoNumbersFor(times: 5)
showLottoNumbersAt(order: 2)
