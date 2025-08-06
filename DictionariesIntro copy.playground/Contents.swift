import UIKit

var greeting = "Hello, playground"

//DICTIONARIES

var score = ["Richard": 100, "Tanmay": 1000, "wdghx": 100]
print(score)
//Declaraion

var myd1 = [String: Int]()
var myd2 = Dictionary<String, Int>()
var myd3: [String: Int] = [:]

score["Tanmay"] = 999
print(score)

score["AHSCK"] = 250
print(score)

//Cannot display in some order

score.updateValue(777, forKey: "Tanmay")

print(score)

//var temp = score.updateValue(11, forKey: "vjavk")
//print(temp)-------------------------------------------------------> nil------> but it will add it in dict

var temp = score.updateValue(11, forKey: "vjavk") ?? 0
print(temp)


var score1 = ["First": "C++", "Second": "Python", "Third": "Swift"]

var temp1 = score1.updateValue("C", forKey: "Fourth") ?? "default"
print(temp1)

//REMOVE

var removed = score1.removeValue(forKey: "Fourth")
print(score1)
//print("Removed Value = \(removed)")
var removed1 = score1.removeValue(forKey: "Forth") ?? "No key is Found"
//print("Removed Value = \(removed1)")----------------------------------->nil

print(score1.count)
print("Keys are = \(score1.keys)")//------------Properties
print("Keys are = \(score1.values)")//-------------^

print(score1["tenth"] ?? "Not present")


