import Foundation

var lottoSeries = [String: [Int]]()

func makeLottoSeries() {
    for seriesNumber in 1...5 { // 5회차까지 생성
        var lottoArr = [Int]()
        
        makeLottoSet() // 함수의 재사용 
        
        for number in lottoSet { //lottoSet은 Array가 아니기 때문에 배열에 넣어줌
            lottoArr.append(number)
        }
      lottoSeries["\(seriesNumber)회차"] = lottoArr
    }
}


func selectLottoSeries() {
    
    print("몇 회차를 찾으십니까? :", terminator: " ") // 회차 입력값을 받음
    let number = Int(readLine()!)!
    var printedNumberCount: Int = 0
    if let safeLottoSeries = lottoSeries["\(number)회차"] {
        print("\(number)회차의 로또 당첨 번호는", terminator: " ")
        for lottoNumber in safeLottoSeries {
            if printedNumberCount != lottoSeries.count {
                print("\(lottoNumber),", terminator: " ")
                printedNumberCount += 1
            } else {
                print("\(lottoNumber) 입니다.")
            }
        }
        
    } else {
        print("찾으시는 회차는 없습니다.")
    }
}


func resultStep3() {
    makeLottoSeries()
    selectLottoSeries()
}

