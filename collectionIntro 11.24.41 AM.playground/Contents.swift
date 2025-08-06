import UIKit

var greeting = "Hello, playground"
print(greeting)

//Array and Dictionary

var name: [String] = ["a", "b", "c"]                        // []-> subscript
//--------------
//      |
//      |
//type annotation

print(name)

var numbers :[Int8] = [5, 8, 2] //-------------->type inference(automaticaly assign int)     int8-> 1 byte   0-255

if numbers.contains(2) {                            //-----> Bool
    print("array contains 30")
}
else {
    print("not there")
}

var arr1: [Int] = []
var arr2: Array<Int> = []
var arr3 = [Int]()

var arr4 = [Int](repeating: 10, count: 10)
print(arr4.count)

if arr4.isEmpty {
    print("Empty")
}
else {
    print("not empty")
}

name[1] = "tanamy"
print(name)
name.append("saxena")
print(name)
print(name[1].appending(" iOS"))
name += ["hi", "hello"]
print(name)

name.insert("iOS", at: 1)
print(name)
//name.insert("Tanmay", at: name.count + 1)-------------------------> out of range
name.insert("Tanmay", at: name.count)
print(name)
//print(name[name.count])-----------------> out of range

var removed = name.remove(at: name.count - 1)
print(removed)

//name.removeAll()------------> remove all
//print(name)------------------> 0

var dropped = name.dropLast()           //------------------> returns a new array conatining all elements except last one
print("dropped-> \(dropped)")
print("name-> \(name)")

var arr6 = [7, 8, 3, 8, 9]
var arr7 = [45, 46, 8, 35]
var combine = [arr6, arr7]
print(combine)

