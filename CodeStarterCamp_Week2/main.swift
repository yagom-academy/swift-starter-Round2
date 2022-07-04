
func makemyLottoNumber() -> Set<Int> {
 var myLottoNumber: Set<Int> = Set<Int>()
    while myLottoNumber.count < 6 {
        myLottoNumber.insert(Int.random(in: 1...45))
    }
    return myLottoNumber
}
print(makemyLottoNumber())

func makeRealLottoNumber() -> Set<Int> {
 var realLottoNumber: Set<Int> = Set<Int>()
    while realLottoNumber.count < 6 {
    realLottoNumber.insert(Int.random(in: 1...45))
    }
    return realLottoNumber
}
print(makeRealLottoNumber())

//let myLottoNumbers: Set<Int> = [1, 2, 12, 9, 36, 35]
//let realLottoNumbers: Set<Int> = [1, 12, 36, 6, 27, 7]

let intersection: Set<Int> = makemyLottoNumber().intersection(makeRealLottoNumber())
print(intersection)

if intersection.count == 0 {
    print ("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 ", terminator:"")
    for (index, number) in intersection.enumerated() {
        if index == intersection.count - 1{
            print(number, terminator: "")
        } else{
            print(number, terminator: ",")
        }
    }
    print(" 입니다!", terminator: "")
}
