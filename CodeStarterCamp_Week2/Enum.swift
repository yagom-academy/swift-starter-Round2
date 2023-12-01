//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/26.
//

import Foundation

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
day = .tue

print(day)
// switch case 문에 적용을 잘한다.
switch day {
case .mon, .tue, .wed, .thu:
    print("일하는 요일")
case Weekday.fri:
    print("TGIF!!")
case .sat, .sun:
    print("신나는 주말!")
}


enum Dish {
   case rice, noodle, soup
}

func choose(dish: Dish) {
   print("\(dish)을 골랐군요.")
}

choose(dish: Dish.noodle)
choose(dish: .rice)

enum Drink: String {
   case coffee = "커피", juice = "주스", cola = "콜라"
}

func chooseBeverage(drink: Drink) {
   print("\(drink.rawValue)을(를) 골랐군요.")
}
chooseBeverage(drink: Drink.cola)

enum Gender: String {
   case male = "남자"
   case female = "여자"
}

func choose(gender: Gender, name: String) {
   print("\(name), 당신은 \(gender.rawValue)입니다.")
}
choose(gender: Gender.female, name: "Nat Kim")


/// MARK: - 원시값
/// C언어의 enum처럼 정수값을 가질 수 있음
/// rawValue 를 사용
/// case 별로 각각 다른 값을 가져야 함

enum Planet: Int {
   case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, naptune
}

enum CompassPoint: String {
   case north, south, east, west
}

let earthOrder = Planet.earth.rawValue

print("earthOrder is \(earthOrder).")


var directionToHead = CompassPoint.west
directionToHead = .east
print("You are in the \(directionToHead) now.")


/// 정수 타입뿐만 아니라
/// Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

// MARK: 원시값을 통한 초기화
/// rawValue 를 통해 초기화 가능
/// rawValue 가 case 에 해당하지 않을 수 있으므로
/// rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입
let apple: Fruit? = Fruit(rawValue: 0)
if let orange: Fruit = Fruit(rawValue: 5 ) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다.")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다.")
}

// MARK: 메서드 추가 가능
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절")
        case .dec, .jan, .feb:
            print("추운 겨울입니다.")
        }
    }
}

Month.aug.printMessage()


//enum WirelessWays: String {
//   case 3G = "1.5", LTE = "2nd", 4G = "3rd", 5G = "4th"
//}
//
//func choose(wireless: WirelessWays) {
//   print("You use mobile phone in \(wireless) way.")
//}
//
//choose(wireless: <#T##WirelessWays#>)

enum WirelessWays: String {
case _3G = "1.5",LTE = "2nd", _4G = "3rd", _5G = "4th"
    func description() -> String {
        switch self {
        case ._3G:
            return "1.5"
        case .LTE:
            return "2nd"
        case ._4G:
            return "3rd"
        case ._5G:
            return "4th"
        }
    }
}

func choose(wireless: WirelessWays) {
    print("당신은 휴대전화를 \(wireless.description()) 방식으로 사용합니다.")
}

choose(wireless: .LTE)

enum Macbook: Int{
    case intelMac = 2019, M1, M2, M3
    
    func printMsg() {
        switch self {
        case .intelMac:
            print("Monterey")
        case .M1:
            print("bigSur")
        case .M2:
            print("Ventura")
        case .M3:
            print("Sonoma")
        }
    }
}

Macbook.M2.printMsg()
print("m2: \(Macbook.M2.rawValue)")
