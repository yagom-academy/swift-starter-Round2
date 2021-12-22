//
//  IntArrayToStringConverter.swift
//  CodeStarterCamp_Week2
//
//  Created by 박세웅 on 2021/12/22.
//

import Foundation

func convertToString(array: [Int]) -> String {
    return array.map{ String($0) }.joined(separator: ", ")
}
