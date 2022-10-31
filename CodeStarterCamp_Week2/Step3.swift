import Foundation

var lottoSeries = [Int: [String]]()

func makeLottoSeries() {
    for seriesNumber in 1...5 { // 5회차까지 생성
        var lottoArr = [String]()
        while lottoArr.count != 6 {
            let randomNumber = Int.random(in: 1...45)
            lottoArr.append(String(randomNumber))
        }
      lottoSeries[seriesNumber] = lottoArr
    }
}


func selectLottoSeries() {
    
    print("몇 회차를 찾으십니까? :", terminator: " ") // 회차 입력값을 받음
    let number = Int(readLine()!)!
    
    if let safeLottoSeries = lottoSeries[number] {
        let lottoSeriesNumber = safeLottoSeries.joined(separator: ", ")
        print("\(number)회차의 로또 당첨 번호는 \(lottoSeriesNumber) 입니다", terminator: " ")
        
    } else {
        print("찾으시는 회차는 없습니다.")
    }
}


func resultStep3() {
    makeLottoSeries()
    selectLottoSeries()
}

