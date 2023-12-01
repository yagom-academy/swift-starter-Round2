//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by Nat Kim on 2023/11/30.
//

import Foundation

class GameCharacter {
    //Property: 타입과 연관된 값
    var name: String
    var weapon: String
    var hp: Int
    
    // initializer - 생성자(특수한 용도의 함수)
    init(name: String, weapon: String, hp: Int) {
        self.name = name
        self.weapon = weapon
        self.hp = hp
    }
    
    //
    deinit {
        print("내 죽음을 알리지마라!")
    }
    
    
    func attack(to: GameCharacter) {
        print("\(self.name) 이(가) \(to.name) 을(를) 공격!!")
    }
    
}

class Barbarian: GameCharacter{
    func jump() {
        
    }
}

// 이니셜라이저는 생략가능
let nat: Barbarian = Barbarian.init(name: "냇", weapon: "도끼", hp: 100)

let sooi: Barbarian = Barbarian(name: "수이", weapon: "할배검", hp: 200)

// deinit 을 직접 호출할 수는 없다.

class Amazon: GameCharacter {
    func run() {
        print("뛰어!")
    }
}

let yagom: Amazon = Amazon(name: "yagom", weapon: "창", hp: 30)
yagom.attack(to: sooi)
yagom.run()
yagom.weapon = "몽둥이"

sooi.attack(to: yagom)
//Cannot convert value of type 'Amazon' to expected argument type 'Barbarian'

class Computer {
    private var isPowerOn: Bool = false
    private var isFanOn: Bool = false
    
    func powerOn() {
        isPowerOn = true
        fanOn()
    }
    
    func powerOff() {
        isPowerOn = false
        fanOff()
    }
    
    private func fanOn() {
        isFanOn = true
    }
    
    private func fanOff() {
        isFanOn = false
    }
}

let macMini: Computer = Computer()
// macMini.isPowerOn // 직접 바꿔줌
macMini.powerOn() // 객체가 직접 행동하도록함



