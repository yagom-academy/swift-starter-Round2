
import Foundation

func showLotto(number: Int, in lotto: [String: [Int]]) {
    if let lottonumbers = lotto["\(number)회차"] {
        print("\(number)회차의 로또 당첨 번호는 \(convertToString(lottonumbers)) 입니다.")
    } else {
        print("해당 회차의 로또 당첨 번호는 없습니다.")
    }
}


func buyLotto(count: Int) -> [String: [Int]] {
    var lottos = [String: [Int]]()
    
    for number in 1...count {
        lottos.updateValue(createLottoNumbers(), forKey: "\(number)회차")
    }
    return lottos
}

func createLottoNumbers() -> [Int] {
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

