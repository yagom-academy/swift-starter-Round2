//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - Array
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(200)
integers.append(33)
print(integers)

print(integers.contains(150))
print(integers.contains(2))

integers.remove(at: 0)
print(integers)
integers.removeLast()
print(integers)
integers.removeAll()
print(integers)
print(integers.count)

//print("integer[0]: \(integers[0])")
//⛔️ Fatal error: Index out of range

/// Array<Double> 와 [Double] 는 동일한 표현
/// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
var characters: [Character] = []

// let 을 사용해 Array 를 선언시 불변 Array
let immutableArray = [1, 2, 3]

//불변 Array 요소는 추가 / 삭제 불가
//immutableArray.append(4)
//Cannot use mutating member on immutable value: 'immutableArray' is a 'let' constant
//immutableArray.removeAll()
//Cannot use mutating member on immutable value: 'immutableArray' is a 'let' constant

//MARK: - Dictionary
//Key 가 String 타입이고 Value 가 Any 인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["firstKey"] = "1st"
anyDictionary["anotherKey"] = UInt8(ascii: "A")
print(anyDictionary)//["anotherKey": 65, "firstKey": "1st"]

// Key 에 해당하는 값 변경
anyDictionary["firstKey"] = "zero"
print(anyDictionary) //["firstKey": "zero", "anotherKey": 65]

//Key 에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["firstKey"] = nil
print(anyDictionary) //[:]

// 빈 Dictionary 생성
let emptyDictionary: [String: String] = [:]

// 초기 값을 가지는 Dictionary 생성
let initializedDictionary: [String: String] = ["name": "Nat", "gender": "female"]

///let 으로 선언한 불변 Dictionary 는 수정 불가
//emptyDictionary["Key"] = "value"
//Cannot assign through subscript: 'emptyDictionary' is a 'let' constant
// name에 해당하는 값이 Dictionary 에 존재하지 않을 수 있으므로
// 컴파일 오류 발생  - 옵셔널 파트에서 다룸

//let someValue: String = initializedDictionary["name"]
///Value of optional type 'String?' must be unwrapped to a value of type 'String'

//MARK: - Set
var integerset: Set<Int> = Set<Int>()

integerset.insert(1)
integerset.insert(100)
integerset.insert(99)
integerset.insert(Int(3.14))

print(integerset) //[3, 100, 1, 99]
print(integerset.contains(1)) //true
print(integerset.contains(3))//true

integerset.remove(100)//[3, 1, 99]
print(integerset)

integerset.removeFirst()
print(integerset)//[1, 99]

print(integerset.count)//2

// Set은 집합연산에 유용함
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union) //[3, 6, 7, 4, 1, 5, 2]

// 합집합 - 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) //[1, 2, 3, 4, 5, 6, 7]

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) //[4, 3, 5]

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) //[2, 1]
