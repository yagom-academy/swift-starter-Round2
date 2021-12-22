//
//  LottoFactory.swift
//  CodeStarterCamp_Week2
//
//  Created by 박세웅 on 2021/12/20.
//

import Foundation

struct LottoFactory {
    
    var myLottoNumbers: [Int] = []
    
    // 랜덤으로 여섯 개의 로또 번호를 생성하여 배열로 반환합니다.
    func pickWinningNumbers() -> [Int] {
        var winningNumbers: [Int] = []
        repeat {
            let number: Int = pickOneRandomNumber(start: 1, end: 45)    // 랜덤으로 숫자 생성
            if !winningNumbers.contains(number) {
                winningNumbers.append(number)
            }
        } while(winningNumbers.count < 6)
        
        return winningNumbers
    }
    
    // 두 숫자 Array를 비교하여 겹치는 숫자들을 배열로 반환하는 함수. 겹치는 숫자가 없을 경우 빈 배열을 반환합니다.
    func lottoComparor(myLottoNumbers: [Int], winningNumbers: [Int]) -> [Int]? {
        var result: [Int]? = nil
        result = myLottoNumbers.filter { winningNumbers.contains($0) } // filter 사용
        return result
    }
    
    // 비교 결과 배열을 인자로 전달받아 결과를 반환하는 함수. 배열이 비었으면 메시지를, 그렇지 않다면 배열의 요소들을 메시지에 담습니다.
    func printCompareResult(compareResult: [Int]?){
        var comment: String = ""
        
        if let result = compareResult, result.count > 0 {
            comment = "축하합니다! 겹치는 번호는 " + result.map{ String($0) }.joined(separator: ", ") + " 입니다!"
        } else {
            comment = "아쉽지만 겹치는 번호가 없습니다."
        }
        print(comment)
    }
}
