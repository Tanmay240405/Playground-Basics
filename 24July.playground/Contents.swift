import UIKit

let temperature = 100

if temperature >= 100 {
    print("Water is boiling")
}
else{
    print("water is not boiling")
}

let number = 20
let isbig = number > 50
print(isbig)    //true

if number != 100{
    print("not 100")
}

if number != 100 && number > 50{
    print("not 100 and bigger than 50")
}
else if number == 100{
    print("number is 100")
}
else{
    print("it is smaller than 50")
}

var isPlugged = true
var hasBattery = false

if isPlugged || hasBattery{
    print("can work")
}
else{
    print("please charge")
}

//switch case

var choice = 1

switch choice{  //switch must be exhaustive(default should be there)
    case 1:
        print("it is 1")
        fallthrough     //executes next condition also
    case 2:
        print("it is 2")
    default:
        print("invalid")
}

enum direction{
    case north
    case south
    case west
    case east
}

var Direction: direction = .north

switch Direction{  //no default cause we are using enum(without fallthgrough)
    case .north:
        print("north")
    case .south:
        print("north")
    case .east:
        print("north")
    case .west:
        print("north")
}

var chara = "w"

switch chara{
    case "a", "e", "i", "o", "u":
        print("vowel")
    default:
        print("not a vowel")
}

var distance = 200

switch distance{
    case 0...9:
        print("hot")
    case 10...99:
        print("medium")
    case 100...999:
        print("cold")
    default:
        print("invalid")
}


var temp = 70

switch temp{
    case 65...75:
        print("right")
    case ...64:
        print("too cold")
    default:
        print("too hot")
}

print(Int.min)

var largest: Int
let a = 15
let b = 4

a > b ? print("a bigger"): print("b bigger")  //ternary operator

