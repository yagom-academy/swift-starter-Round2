import Foundation

var lottoSeries = [Int : Set<Int>]()

func makeLottoSeries() {
    for seriesNumber in 1...5 { // 5회차까지 생성
        var lottoSet = Set<Int>()
        while lottoSet.count != 6 {
            let randomNumber = Int.random(in: 1...45)
            lottoSet.insert(randomNumber)
        }
      lottoSeries[seriesNumber] = lottoSet
    }
}


func selectLottoSeries() {
    var printedNumberCount = 0
    
    print("몇 회차를 찾으십니까? :", terminator: " ") // 회차 입력값을 받음
    let number = Int(readLine()!)!
    
    if let safeLottoSeries = lottoSeries[number] {
        print("\(number)회차의 로또 당첨 번호는 ", terminator: "")
        
        for lottoNumber in safeLottoSeries {
            if printedNumberCount != lottoSeries.count {
                print("\(lottoNumber),", terminator: " ")
                printedNumberCount += 1
            } else {
                print("\(lottoNumber) 입니다.")
            }
        }
    } else {
        print("nil")
    }
}


func resultStep3() {
    makeLottoSeries()
    selectLottoSeries()
}

