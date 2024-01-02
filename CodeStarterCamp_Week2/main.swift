import Foundation

// Create Array

var integersFm: Array<Int> = Array<Int>()

var integers: [Int] = [123,12,45,23]

integers.append(1)
integers.append(100)

print(integers)

var bool: Bool = integers.contains(50)

print(bool)
integers[0] = 50
print(integers[0])
print(integers)

integers.remove(at: 0)
print(integers[0])
print(integers)

integers.removeLast()
print(integers)

//integers.removeAll()
//print(integers)

print(integers.count)

// Dictionary

