
import Foundation

func printLottoResult(){
    if correctNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(convertToString(correctNumbers)) 입니다! ")
    }
}

func createLotto() -> [Int] {
    var lottoNumbers = [Int]()
    
    while lottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        
        if lottoNumbers.contains(number){
            continue
        } else {
            lottoNumbers.append(number)
        }
    }
    
    return lottoNumbers
}

func compareToMachine(user: [Int], machine: [Int]) -> [Int] {
    let correctNumbers = user.filter { machine.contains($0) }
    
    return correctNumbers
}

func convertToString(_ array: [Int]) -> String {
    let message = array.map { String($0) }
    
    return message.joined(separator: ", ")
}

