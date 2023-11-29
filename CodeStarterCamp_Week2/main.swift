//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/29.
//

import Foundation

func someFunction(someOptionalParam: Int?) {
    //
}

func someFunction(someParam: Int) {
    //
}

someFunction(someOptionalParam: nil)

//someFunction(someParam: nil)
//nil' is not compatible with expected argument type 'Int'

var optionalValue: Int! = 100

//MARK: - Implicitly Unwrapped Optional 암시적 추출 옵셔널
switch optionalValue {
case .none:
    print("This Optional variable is nil.")
case .some(let value):
    print("Value is \(value).")
}

// 기존 변수처럼 사용 가능
optionalValue = optionalValue + 1
//Value of optional type 'Int?' must be unwrapped to a value of type 'Int'

// nil 할당 가능
optionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//optionalValue = optionalValue + 1
//  Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value

//MARK: - Optional Unwrapping
//var today = 29
//print(type(of: today))
//print(today)
//var someDictionary: [String: String] = [:]
//let day: Int = day(of: today)
//print(day)
//func day(of: Int) {
//    if day == 1 || day == 30 {
//        someDictionary["날씨"] == "맑음"
//    } else {
//        someDictionary["풍향"] == "남동풍"
//    }
//
//}
//
//day(of: 29)

func printName(_ name: String) {
    print(name)
}

var myName: String! = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName = nil")
}

/// name 상수는 if let 구문 내에서만 사용가능
/// 상수 사용범위를 벗어낫기 때문에 컴파일 오류 발생
// printName(name)
// Cannot find 'name' in scope

var myName2: String? = "nat"
var yourName: String? = nil

if let name = myName2, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourname 이 nil 이라 print 문이 실행되지 않음
yourName = "hahah"

if let name = myName2, let friend = yourName {
    print("\(name) and \(friend)")
}

// MARK: Try it yourself
var someDictionary: [String: String] = [:]

var numbers: [Int?] = [0, 1, nil, 2, 5]
numbers.append(nil)

print(numbers)
/*
let someArray: [[[Int?]?]?] = [[[1, 2],
                                nil,
                                [3, nil, 4],
                                nil,
                                [5, 6]
                               ]]
 */
//someArray.contains { num in
//    if num % 3 == 0 || num == 3 {
//
//    }
//}

let someArray: [[[Int?]?]?] = [[[1, 2], nil, [3, nil, 4], nil, [5, 6]]]





//let parts: [[[Int]]] = [[[1, 2], [3, 4]],
//                        [[5, 6], [7, 8]]]
//
//for a in 0..<parts.count {
//    // Print index of first dimension.
//    print("Outer = \(a)")
//    // Display inner two arrays.
//    for b in 0..<parts[a].count {
//        var line = ""
//        for c in 0..<parts[a][b].count {
//            line += String(parts[a][b][c])
//        }
//        print(line)
//    }
//    print("")
//}
