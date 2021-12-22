//
//  NumberPicker.swift
//  CodeStarterCamp_Week2
//
//  Created by 박세웅 on 2021/12/20.
//

import Foundation

// 랜덤으로 숫자 하나를 생성하는 함수. 숫자 범위는 0 < value < 46 입니다.
func pickOneRandomNumber(start: Int, end: Int) -> Int {
    return Int.random(in: start...end)
}
