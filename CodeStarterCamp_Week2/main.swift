//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func generateLottoNumbers() -> Set<Int> {
    var generatedLottoNumbers: Set<Int> = [] // 순서가 없고 멤버가 유일한 것을 보장 (중복을 막음)
    
    while generatedLottoNumbers.count < 6 {
        generatedLottoNumbers.insert(Int.random(in: 1..<45))
    }
    return generatedLottoNumbers
}

// 로또 번호 비교 함수
func compareLottoNumbers() -> [Int] {
    let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6] // 나의 로또 번호
    var resultLottoNumbers: [Int] = [] // 겹치는 로또 번호를 저장할 배열
    let generatedLottoNumbers = generateLottoNumbers() // 당첨 번호 저장
    
    for num in myLottoNumbers {
        if generatedLottoNumbers.contains(num) { // num가 포함되어 있는지 확인
            resultLottoNumbers.append(num) // 배열에 num을 추가
        }
    }
    return resultLottoNumbers
}
    func printLottoNumbers() {
        let restultLottoNumbers = compareLottoNumbers()
        var lottoNumbers: String = "" //겹치는 로또 번호를 문자열로 저장할 변수를 빈 문자열로 초기화
        
        for number in restultLottoNumbers {
            lottoNumbers.append("\(number), ")
        }
//        if lottoNumbers.isEmpty {
//        print("아쉽지만 겹치는 번호가 없습니다.")
//        } else {
//            lottoNumbers.removeLast(2)
//            print("축하합니다! 겹치는 번호는 \(lottoNumbers) 입니다!")
//        }
        guard lottoNumbers.isEmpty else {
            lottoNumbers.removeLast(2)
            return print("축하합니다! 겹치는 번호는 \(lottoNumbers) 입니다!")
        }
        return print("아쉽지만 겹치는 번호가 없습니다.")
}
printLottoNumbers()
