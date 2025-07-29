import UIKit

func DisplayPi() -> Double {                //  func funcName -> returnType { body }
    print("3.14")                           //          |
    let pi = 3.14                           //          v
    return pi                               //   Function Signature
}
var x = DisplayPi()
print(x)

func triple(value: Int) -> Int {
    return value * 3
}

var q = triple(value: 5)
print(q)

func multiply(fnum: Int, secnum: Int) -> Int {
    return fnum * secnum
}

var t = multiply(fnum: 20, secnum: 24)
print(t)
print("result = \(multiply(fnum: 20, secnum: 24))")             //interpolation

func divide(fnum: Int, snum: Int) -> Int {
    fnum / snum                                                 // no return  ->  when only one line in the function
}

print(divide(fnum: 10, snum: 5))

func sayHello(to person: String, and anotherPerson: String) {               //to and -> arguments    ||    person and anotherperson -> external labels
    print("Hello \(person) and \(anotherPerson)")
}

sayHello(to: "Tanmay", and: "Saxena")                               // Tanmay Saxena -> Actual arguments     ||     person and anotherperson -> formal arguments

func add(_ fnum: Int, _ snum: Int) {
    print("Sum = \(fnum + snum)")
}
add(10, 20)                                                 // _ helps to ignore arguments while calling a function


func increment(_ value: Int, by number: Int) {
    print("increment value = \(value + number)")
}
increment(15, by: 6)

func displayInfo(name: String, place: String = "Pune"){         // Default Parameter value
    print("Name \(name) Place = \(place)")
}

displayInfo(name: "Tanmay")
displayInfo(name: "Tanmay", place: "NOIDA")

func dsum(_ n1: Int = 0, _ n2: Int = 0) {
    print(n1 + n2)
}

dsum()
dsum(10)
dsum(10, 40)

func findMin(_ fnum: Int, _ snum: Int) ->(minV: Int, maxV: Int){                        // Return 2 Values in a Function
    if fnum > snum {
        return (minV: snum, maxV: fnum)
    }
    else {
        return (minV: fnum, maxV: snum)
    }
}

let (min, max) = findMin(99, 100)
print("minimum = \(min) and maximum = \(max)")

var result = findMin(99, 100)
print("Maximum is = \(result.maxV)")
print("Minimum is = \(result.minV)")
