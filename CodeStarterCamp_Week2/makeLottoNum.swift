func makeLottoNum() -> [Int]{
    var numbersSet: Set<Int> = Set<Int>()
    
    while numbersSet.count < 6{
        let num = Int.random(in: 1...45)
        numbersSet.insert(num)
    }
    
    let numbersArray = numbersSet.sorted()
    
    return numbersArray
}

func makeLottoNumString() -> [String]{
    var numbersSet: Set<String> = Set<String>()
    
    while numbersSet.count < 6{
        let num = String(Int.random(in: 1...45))
        numbersSet.insert(num)
    }
    
    let numbersArray = numbersSet.sorted()
    
    return numbersArray
}
