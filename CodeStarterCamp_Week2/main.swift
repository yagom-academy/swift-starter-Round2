import Foundation

var numbers = Set<Int>(1...45)

var lottoNumber = Set<Int>()
//1부터 45중 랜덤한 숫자를 받을 컬렉션

let myLottoNumbers: Set<Int> = [3,7,8,23,29,43]
//내가 임의로 정한 6개의 숫자 컬렉션


while lottoNumber.count < 6 {
    lottoNumber.insert(numbers.randomElement()!)
}

var intersectionNumber: Set<Int> = myLottoNumbers.intersection(lottoNumber)
//1~45부터 랜덤하게 뽑힌숫자와 내 임의 숫자의 교집합

var intersectionNumMap = intersectionNumber.map { Int in return String(Int)
}
//map = 특정 배열에 String으로 모두 mapping 변환해주는 함수
var intersectionNumJoined = intersectionNumMap.joined(separator: ",")


print(lottoNumber)
print(intersectionNumber)
print(intersectionNumJoined)


if intersectionNumber.count > 0 {
    
    for _ in intersectionNumber {}
    print("축하합니다! 겹치는 번호는 \(intersectionNumJoined) 입니다")
} else if intersectionNumber.count == 0 {
    print("아쉽지만 겹치는 번호가 없습니다")
}




