//
//  LottoFactory.swift
//  CodeStarterCamp_Week2
//
//  Created by 박세웅 on 2021/12/20.
//

import Foundation

struct LottoFactory {
    
    var myLottoNumbers: [Int] = []
    
    init(myLottoNumbers: [Int]) {
        self.myLottoNumbers = myLottoNumbers
    }
    
    // 랜덤으로 여섯 개의 로또 번호를 생성하여 배열로 반환합니다.
    func LottoPicker() -> [Int] {
        var newlyPickedNumbers: [Int] = []
        repeat {
            let number: Int = NumberPicker()    // 랜덤으로 숫자 생성
            if !newlyPickedNumbers.contains(number) {
                newlyPickedNumbers.append(number)
            }
        } while(newlyPickedNumbers.count < 6)
        
        return newlyPickedNumbers
    }
    
    // 두 숫자 Array를 비교하여 겹치는 숫자들을 배열로 반환하는 함수. 겹치는 숫자가 없을 경우 빈 배열을 반환합니다.
    func LottoComparor(myLottoNumbers: [Int], newlyPickedNumbers: [Int]) -> [Int] {
        var result: [Int] = []
        for num in newlyPickedNumbers {
            if myLottoNumbers.contains(num) {
                result.append(num)
            }
        }
        return result
    }
    
    // 비교 결과 배열을 인자로 전달받아 결과를 반환하는 함수. 배열이 비었으면 메시지를, 그렇지 않다면 배열의 요소들을 메시지에 담습니다.
    func printCompareResult(compareResult: [Int]) -> String {
        var comment: String = ""
        if compareResult.isEmpty {
            comment = "아쉽지만 겹치는 번호가 없습니다."
        } else {
            comment = "축하합니다! 겹치는 번호는 "
            
            for num in compareResult {
                comment = comment + String(num) + ", "
            }
            comment.removeLast(2)
            comment = comment + " 입니다!"
        }
        return comment
    }
}
