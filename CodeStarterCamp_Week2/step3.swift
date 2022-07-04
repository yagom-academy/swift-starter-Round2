//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 임기웅 on 2022/07/04.
//

import Foundation

var round: Int = 1
var lottoHistory: Dictionary<String,[Int]> = [String:[Int]]()

func insertHistory(){
    let intNumber: [Int] = [Int](lottoNumbers)
    lottoHistory["\(round)회차"] = intNumber
    round += 1
}
