func checkLotto(myNums: Array<Int>, lottoNums: Array<Int>) -> Void{
    var sameNums = [Int]()
    for myNum in myNums{
        for lottoNum in lottoNums{
            if(myNum == lottoNum){
                sameNums.append(myNum)
            }
        }
    }
    
    if sameNums.count == 0{
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
    
    else{
        print("축하합니다! 겹치는 번호는 ", terminator:"")
        for i in sameNums{
            print("\(i), ", terminator:"")
        }
        print("입니다!")
    }
}
