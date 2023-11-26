//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/26.
//

import Foundation

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

//
//enum WirelessWays: String {
//   case 3G = "1.5", LTE = "2nd", 4G = "3rd", 5G = "4th"
//}
//
//func choose(wireless: WirelessWays) {
//   print("You use mobile phone in \(wireless) way.")
//}
//
//choose(wireless: <#T##WirelessWays#>)
