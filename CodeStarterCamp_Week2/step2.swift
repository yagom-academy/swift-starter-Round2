
//import Foundation
//for, enumerated
//if intersectionNumber.count > 0 {
//    print("축하합니다! 겹치는 번호는 " , terminator: "")
//    for (index, number) in intersectionNumber.enumerated() {
//        if index == intersectionNumber.count - 1 {
//            print(number,terminator: "")
//        } else {
//            print(number,terminator: ",")
//            }
//        }
//    print(" 입니다! ", terminator: "")
//
//} else if intersectionNumber.count == 0 {
//    print("아쉽지만 겹치는 번호가 없습니다")
//}


//stpe2 방법2 ,map joined
//var intersectionNumMap = intersectionNumber.map ({ Int in return String(Int)
//})
//map = 특정 배열에 String으로 모두 mapping 변환해주는 함수
//var intersectionNumJoined = intersectionNumMap.joined(separator: ",")

//if intersectionNumber.count > 0 {
//    print("축하합니다! 겹치는 번호는 \(intersectionNumJoined) 입니다")
//} else if intersectionNumber.count == 0 {
//    print("아쉽지만 겹치는 번호가 없습니다")
//}
