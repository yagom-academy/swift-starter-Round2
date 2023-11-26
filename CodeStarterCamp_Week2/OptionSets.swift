//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/26.
//

import Foundation

struct ShippingOptions: OptionSet {
   let rawValue: Int
   
   static let nextDay = ShippingOptions(rawValue: 1 << 0) // 1
   
   static let secondDay = ShippingOptions(rawValue: 1 << 1) // 2
   
   static let priority = ShippingOptions(rawValue: 1 << 2) // 4
   
   static let standard = ShippingOptions(rawValue: 1 << 3) // 8
   
   static let express: ShippingOptions = [.nextDay, .secondDay]
   static let all: ShippingOptions = [.express, .priority, .standard]
}

let singleOption: ShippingOptions = .priority
let multipleOptions: ShippingOptions = [.nextDay, .secondDay, .priority]
let noOptions: ShippingOptions = []

print(singleOption.rawValue)
print(multipleOptions.rawValue)
print(noOptions.rawValue)

let purchasePrice = 87.55

var freeOptions: ShippingOptions = []
if purchasePrice > 50 {
   freeOptions.insert(.priority)
}

if freeOptions.contains(.priority) {
   print("You've earned free priority shipping!")
} else {
   print("And more to your cart for free priority shipping")
}
