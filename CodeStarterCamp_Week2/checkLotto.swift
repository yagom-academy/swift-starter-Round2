func checkLotto(myNums: [Int], lottoNums: [Int]) -> Void{
    var sameNums = [String]()
    for myNum in myNums{
        if lottoNums.contains(myNum){
            sameNums.append(String(myNum))
        }
    }
    
    if sameNums.count == 0{
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else{
        let joinedNums = sameNums.joined(separator: ",")
        print("축하합니다! 겹치는 번호는 \(joinedNums) 입니다!")
    }
}
