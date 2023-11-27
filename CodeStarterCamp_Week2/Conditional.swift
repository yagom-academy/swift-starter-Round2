//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/27.
//

import Foundation

let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

/// Swift 조건에는 항상 Bool 타입이 들어와야함
/// someInteger 는 Bool 타입이 아닌 Int 타입이기 때문에
/// 컴파일 오류가 발생함.


//MARK: Switch
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
    
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

let name = String(readLine()!)
switch name {
case "jake":
    print("jake")
    fallthrough
case "mina":
    print("mina")
case "yagom":
    print("correct!")
default:
    print("unknown")
}
