
func makeRandomLottoNumber() -> Set<Int> {
 var myLottoNumber: Set<Int> = Set<Int>()
    while myLottoNumber.count < 6 {
        myLottoNumber.insert(Int.random(in: 1...45))
    }
    return myLottoNumber
}

let myLottoNumbers: Set<Int> = makeRandomLottoNumber()
let realLottoNumbers: Set<Int> = makeRandomLottoNumber()

print (myLottoNumbers)
print (realLottoNumbers)

let intersection: Set<Int> = myLottoNumbers.intersection(realLottoNumbers)
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
