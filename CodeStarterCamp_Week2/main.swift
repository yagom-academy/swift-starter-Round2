import Foundation


func pickLottoNumbers() -> [Int] {

  var lottoNumbers: [Int] = []
  var totalLottoNumbers: [Int] = Array(1...45)

  totalLottoNumbers.shuffle()
  totalLottoNumbers.removeSubrange(6...(totalLottoNumbers.count-1))
  lottoNumbers = totalLottoNumbers

  return lottoNumbers
}

func compare(_ myLottoNumber: [Int], with lottoNumbers: [Int]) {

  var containNumbers: [Int] = []

  for i in myLottoNumber {
    if myLottoNumber.contains(lottoNumbers[i-1]) {
      containNumbers.append(lottoNumbers[i-1])
    }
  }

  let containNumbersWithString = convertStringArray(from: containNumbers)
  printContainNumbers(in: containNumbersWithString)
}

func convertStringArray(from array: [Int]) -> [String] {

  var convertedStringArray: [String] = []

  for num in array {
    convertedStringArray.append(String(num))
  }

  return convertedStringArray
}

func printContainNumbers(in array: [String]) {

  if array.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
  } else {
    print("축하합니다! 겹치는 번호는 \(array.joined(separator: ", ")) 입니다!")
  }
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoNumbers = pickLottoNumbers()

compare(myLottoNumbers, with: lottoNumbers)
