//
//  function.swift
//  CodeStarterCamp_Week2
//
//  Created by hanjongwoo on 2022/07/01.
//

import Foundation

open class function{
        func makeWinLottoNumbers() -> Array<Int> {
            
            var lottoNumbers = Array<Int>(1...45)
            var winLottoNumbers: Set<Int> = []
            
            for _ in 1...6 {
                var randomNumber: Int = 0
                
                if let randomNum:Int = lottoNumbers.randomElement() {
                    randomNumber = randomNum
                } else {
                    print("There is nil in lottoNumbers")
                }
                        
                winLottoNumbers.insert(randomNumber)
                lottoNumbers = lottoNumbers.filter() {$0 != randomNumber}
            }
            
            return Array(winLottoNumbers)
        }

        // 결과 출력함수
        func printLottoResult(_ round:Int) {
            print("\(round)회차의 로또 당첨번호는 ",terminator: "")
            let numbers = chooseLottoRound(round)
            print(numbers.lazy.joined(separator: ", "),terminator: "")
            print(" 입니다.")
        }

        // 로또번호 생성해서 딕셔너리에 저장하는 함수
        func tryLotto() {
            let round = "\(lottoNumberDic.count+1)회차"
            let numbers = makeWinLottoNumbers()
            
            lottoNumberDic[round] = numbers
        }

        // 원하는 회차 옵셔널 값 안전하게 추출하는 함수
        func chooseLottoRound(_ round:Int) -> Array<String> {
            var lottoNumbers: Array<String> = []
            for i in 0...5{
                guard let lottoNumber:Int = lottoNumberDic["\(round)회차"]?[i]
                else {
                        print("There is nil in lottoNumbers")
                        break
                }
                lottoNumbers.append(String(lottoNumber))
            }
            return lottoNumbers.sorted()
        }
}
