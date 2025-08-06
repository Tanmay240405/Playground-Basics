import UIKit

var greeting = "Hello, playground"

//LOOPS

//for, while, repeat while

for i in 1...3 {//---------------------> closed range-------->include 1 and 5
    print(i)
}
for _ in 1...3 {
    print("Hello")
}

let arr = [1, 3, 5]
for i in arr {
    print("it is \(i)")
}

let str = "Tanmay"
for i in str {
    print("it is \(i)")
}

for (index, i) in "tanmay".enumerated() {
    print("Index: \(index) Letter: \(i)")
}
    
let vehicle = ["cycle": 1, "car": 2, "bus": 3]

for (key, value) in vehicle {
    print("key: \(key) and value: \(value)")
}

// 0...<arr.count------------> half range-------------> wont include arr.count

for i in stride(from: 0, to: 24, by: 5) {//--------------------------->dont include 20
    print(i)
}
print("---------------")

for i in stride(from: 0, through: 24, by: 5) {//--------------------------->dont include 20
    print(i)
    //i += 1-------------------------> i is a let constant
}

var num = 3
while num > 0 {
    print("num \(num)")
    num -= 1
}

var numberOfLives = 3
var stillAlive = true

while stillAlive {
    print("i have \(numberOfLives) lives")
    numberOfLives -= 1
    if numberOfLives == 0 {
        stillAlive = false
        print("Kobe")
    }
}

for i in -10...10 {
    print(i)
    if i == 0 {
        break
    }
}
print("---------------")
for i in -10...10 {
    
    if i == 0 {
        continue
    }
    print(i)
}
//REPEAT WHILE
print("---------------")
var count = 0
repeat {
    print(count)
    count += 1
} while count < 5
