import Foundation

func lottoNumberGenerator () -> [Int] {
    var numbers: [Int] = []
    
    
    while numbers.count < 6 {
        let number = Int.random(in: 1...45)
        print("\(number)")
        if numbers.contains(number) == false {
            numbers.append(number)
        }
    }
    
    return numbers
}

//print(lottoNumberGenerator())
