//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//1. 순서도에 따른 로또번호 생성기
//겹치지 않도록 set 컬렉션 셍성
var emptySetCollection: Set<Int> = Set<Int>()
//set 컬렉션의 멤버가 6개가 될때까지 반복
while emptySetCollection.count < 6 {
    //1~46 범위의 랜덤 넘버 생성
    let randomNumber = Int.random(in: 1...46)
    //set 컬렉션에 추가
    emptySetCollection.insert(randomNumber)
}
//정렬을 위해 Array 컬렉션 생성
var emptyArrayCollection: Array<Int> = Array<Int>()
//set 컬렉션의 sorted 메소드 사용 후 array 컬렉션에 대입
emptyArrayCollection = emptySetCollection.sorted()


//2. 당첨번호와 비교하기
//비교할 당첨번호
let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
//교집합 확인을 위해 Array -> Set으로 변환 작업
//set변환 작업을 위해 상수 -> 변수로 변환
var myLottoNumbersArray = myLottoNumbers
//빈 set 컬렉션 생성
var myLottoNumbersSet: Set<Int> = Set<Int>()
//6개의 멤버가 다 삭제될 때까지 반복
while myLottoNumbersArray.count > 0 {
    //set컬렉션에 추가
    myLottoNumbersSet.insert(myLottoNumbersArray[myLottoNumbersArray.count-1])
    //array컬렉션에서 삭제
    myLottoNumbersArray.remove(at: myLottoNumbersArray.count-1)
}
//교집합이 있는지 확인
let matchNumbers: Set<Int> = myLottoNumbersSet.intersection(emptySetCollection)
//교집합에 멤버가 하나 이상 있는 경우 출력
if matchNumbers.count > 0 {
    print("축하합니다! 겹치는 번호는 \(matchNumbers)입니다!")
//교집합에 멤버가 없는 경우 출력
}else{
    print("아쉽지만 겹치는 번호가 없습니다")
}





print("내가 생성한 번호 : \(emptyArrayCollection)")


//step3. 로또 번호 만들어서 딕셔너리에 저장하기

//회차별 당첨번호 저장할 딕셔너리 변수 생성
var myLottoNumbersCollection: Dictionary<String,Any> = [:]

//회차에 사용할 변수
var time: Int = 0
//회차 증가->key값으로 사용할 문자열 생성 함수
func increaseTime(by tryTime:Int)->String{
    //회차 전역변수 증가
    time = tryTime + 1
    //0회차 문구 생성
    let completeTime: String = String(time)+"회차"
    //0회차 문자열 값 리턴
    return completeTime
}
//Step2에서 만들었던 로또 번호 생성 메소드 활용
func createMyLottoNum(){
    //추출 값이 겹치지 않도록 set 컬렉션 셍성
    var emptySetCollection: Set<Int> = Set<Int>()
    //set 컬렉션의 멤버가 6개가 될때까지 반복
    while emptySetCollection.count < 6 {
        //1~46 범위의 랜덤 넘버 생성
        let randomNumber = Int.random(in: 1...46)
        //set 컬렉션에 추가
        emptySetCollection.insert(randomNumber)
    }
    //정렬을 위해 Array 컬렉션 생성
    var emptyArrayCollection: Array<Int> = Array<Int>()
    //set 컬렉션의 sorted 메소드 사용 후 array 컬렉션에 대입
    emptyArrayCollection = emptySetCollection.sorted()
    //생성될때마다 회차증가 함수 실행 ->키값으로 저장
    let lottoTime: String = increaseTime(by: time)
    //딕셔너리 컬렉션에 "회차"를 키값으로 로또 번호 어레이 입력
    myLottoNumbersCollection[lottoTime] = emptyArrayCollection
    print(myLottoNumbersCollection)
}

//5회차까지 로또 넘버 반복 생성
for _ in 0...4{
    createMyLottoNum()
}
//옵셔널 값 꺼내기
func getValueFromOptional(whatTime:String){
    var value: Array<Int> = Array()
    if let lottoNumbers = myLottoNumbersCollection[whatTime]{
        value = lottoNumbers as! Array<Int>
    }
    print("\(whatTime)의 로또 당첨 번호는 \(value) 입니다.")

}
//실행
getValueFromOptional(whatTime: "5회차")
