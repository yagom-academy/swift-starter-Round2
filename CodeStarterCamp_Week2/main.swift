
func MakemyLottoNumber() -> Set<Int> {
 var myLottoNumber: Set<Int> = Set<Int>()
    while myLottoNumber.count < 6 {
    myLottoNumber.insert(Int.random(in:1...45))
    }
    return myLottoNumber
}
print(MakemyLottoNumber())

func MakeRealLottoNumber() -> Set<Int> {
 var realLottoNumber: Set<Int> = Set<Int>()
    while realLottoNumber.count < 6 {
    realLottoNumber.insert(Int.random(in:1...45))
    }
    return realLottoNumber
}
print(MakeRealLottoNumber())

let myLottoNumbers: Set<Int> = [1, 2, 12, 9, 36, 35]
let realLottoNumbers: Set<Int> = [1, 12, 36, 6, 27, 7]

let intersection: Set<Int> = myLottoNumbers.intersection(realLottoNumbers)

if intersection.count > 0 {
    print("축하합니다! 겹치는 번호는 \(intersection)입니다!")
}
    else {
        print ("아쉽지만 겹치는 번호가 없습니다.")
    }
