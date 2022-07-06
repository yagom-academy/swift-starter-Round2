import Foundation

var lottoNumber = Set<Int>()

var numbers = Array<Int>(1...45)



while lottoNumber.count < 6 {
    lottoNumber.insert(numbers.randomElement()!)
}
print(lottoNumber)
