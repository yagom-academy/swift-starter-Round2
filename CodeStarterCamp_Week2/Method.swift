import Foundation

func createLotto() -> [Int]{
    var x : Int
    var randomVars = [Int]()
    while randomVars.count<6{
        x = Int.random(in: 1...45)
        if randomVars.contains(x){}
        else{
            randomVars.append(x)
        }
    }
    return randomVars
}
