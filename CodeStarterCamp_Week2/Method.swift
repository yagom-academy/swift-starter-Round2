
import Foundation

func findLotto(number: Int) {
    let numberToString = convertToString([number]) + "회차"
    
    if let lottoNumbers = lottoDictionary[numberToString]{
        print("\(numberToString)의 로또 당첨 번호는 \(convertToString(lottoNumbers)) 입니다.")
    }
}

func addLotto(number: Int){         // 로또를 추가하고 싶은 갯수
    for _ in 1...number{
        count += 1
        lottoDictionary.updateValue(createLotto(), forKey: "\(convertToString([count]))회차")
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
    
    return lottoNumbers.sorted()
}

func convertToString(_ array: [Int]) -> String {
    let message = array.map { String($0) }
    
    return message.joined(separator: ", ")
}

