import Foundation

let myLottoNumbers: Set<Int> = [3,7,8,23,29,43]
    //내가 임의로 정한 6개의 숫자 컬렉션

//세트로 리턴해야 다음함수에서 세트로 받아서 사용할수있음
func makeLottoNumber() -> Set<Int> {
    var lottoNumber = Set<Int>()
    
    while lottoNumber.count < 6 {
        lottoNumber.insert(Int.random(in: 1...45))
    }
    return lottoNumber
}

func checkIntersectionNumber() {
    
    let intersectionNumber: Set<Int> = myLottoNumbers.intersection(makeLottoNumber())
    //위에서 만든 로또번호를 가져와서 교집합함수를 구함
    
    if intersectionNumber.count > 0 {
        print("축하합니다! 겹치는 번호는 " , terminator: "")
       
        for (index, number) in intersectionNumber.enumerated() {
            if index == intersectionNumber.count - 1 {
                print(number,terminator: "")
            } else {
                print(number,terminator: ",")
                }
            }
        print(" 입니다! ", terminator: "")

    } else if intersectionNumber.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다")
    }
}
checkIntersectionNumber()



