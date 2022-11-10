import Foundation

var lottoNumber: [Int] = []

func createLotto() {
    while true {
        let randomNumber = Int.random(in: 1..<46)

        if lottoNumber.count == 6 {
            break
        }
        if lottoNumber.contains(randomNumber) == false {
            lottoNumber.append(randomNumber)
        }

    }
}
createLotto()
print(lottoNumber)
