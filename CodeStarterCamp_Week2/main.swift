import Foundation

func makeRandomLottoNumber() -> Set<Int> {
    var myLottoNumber: Set<Int> = Set<Int>()
    while myLottoNumber.count < 6 {
        myLottoNumber.insert(Int.random(in: 1...45))
    }
    return myLottoNumber
}

func checkTheNumber(){
    let myLottoNumbers: Set<Int> = makeRandomLottoNumber()
    let realLottoNumbers: Set<Int> = makeRandomLottoNumber()
    print (myLottoNumbers)
    print (realLottoNumbers)
    
    let intersection: Set<Int> = myLottoNumbers.intersection(realLottoNumbers)
    print("intersection", intersection)
    
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
        print(" 입니다!")
    }
}

checkTheNumber()


var lottoNumberCollection : Dictionary<String,Set<Int>> = [ : ]


func saveLottoNumberRound(){
    lottoNumberCollection["\(lottoNumberCollection.count + 1)회차"] = makeRandomLottoNumber()
}

func repeatSaveLottoNumberRound(n:Int){
    for _ in 1...n {
        saveLottoNumberRound()
    }
}

func checkRoundLottoNumber(round:Int){
    if let roundLottoNumber : Set<Int> = lottoNumberCollection["\(round)회차"]{
        print("\(round)회차의 로또 당첨 번호는")
        for (index, number) in roundLottoNumber.enumerated() {
            if index == roundLottoNumber.count - 1{
                print(number, terminator: "")
            } else{
                print(number, terminator: ",")
            }
        }
        print(" 입니다.", terminator: "")
    } else{
        print("lottoNumberCollection == nill")
    }
}


repeatSaveLottoNumberRound(n:5)
checkRoundLottoNumber(round: 3)
