import Foundation

func showLottoNumbers(at number: Int, outOf times: Int) {
    let lottoNumbersDictionary = makeLottoNumbersFor(times: times)
    if number >= 1 && number <= lottoNumbersDictionary.count {
        if let numbers = lottoNumbersDictionary["\(number)회차"] {
            var arrayForShowingNumbers: [Int] = []
            arrayForShowingNumbers = numbers
            let showingNumbersStringArray = convertStringArray(from: arrayForShowingNumbers)
            print("\(number)회차의 로또 당첨 번호는 \(showingNumbersStringArray.joined(separator: ", ")) 입니다.")
        } else {
            print("해당 회차의 로또번호를 찾을 수 없습니다.")
        }
    } else {
        print("해당 회차의 로또번호는 없거나, 찾고자 하는 회차 숫자가 양수가 아닙니다.")
    }
}

func makeLottoNumbersFor(times numbers: Int) -> [String: [Int]] {
    var lottoNumbersDictionary: [String: [Int]] = [: ]
    if numbers >= 1 {
        for number in 1...numbers {
            var newLottoNumbers: [Int] = []
            newLottoNumbers = pickLottoNumbers()
            lottoNumbersDictionary["\(number)회차"] = newLottoNumbers
        }
    } else {
        print("생성하고자 하는 로또 당첨 횟수는 1보다 크거나 같아야합니다.")
    }

    return lottoNumbersDictionary
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

showLottoNumbers(at: 2, outOf: 5)
