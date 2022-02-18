import Foundation

var numbers:[Int] = []
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var winnumber:[Int] = []

while numbers.count < 6{
    var number = Int.random(in: 1...45)
    if !numbers.contains(number){
        numbers.append(number)
    }
}
print("\(numbers)")

for i in numbers {
    if myLottoNumbers.contains(i) == true {
        winnumber.append(i)
    }
}
if winnumber.count > 0{
    print("축하합니다! 겹치는 번호는\(winnumber)입니다!")
}
else{
    print("아쉽지만 겹치는 번호가 없습니다.")
}