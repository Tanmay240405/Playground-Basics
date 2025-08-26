import UIKit

var greeting = "Hello, playground"
print(greeting)

//Scope

// at which level variable is declared
//global  -> outside function
//local -> inside any {}

var globalVariable = 50                             // if you use let, we can use it anywhere in the program
print(globalVariable)

func printNum(){
    var num = 10
    print("Num \(num)")
}

printNum()
@MainActor                                        //   ->  file is treated as main entity/context and function as a side entity/context so cannot reference globalVariable so we write main actor to make it tag as main entity
func printGlobalNum(){                            //   ->  isolated function
    print("gobal number \(globalVariable)")       //   ->  called annotaion
}

printGlobalNum()
func printBottleCount(){
    let bottles = 10
    print("number of bottle is \(bottles)")
}

printBottleCount()
//print("number of bottle is \(bottles)")    //   ->   outside scope variable calling

func printFiveNumbers(){
    var name = "Tanmay"
    for index in 1...6 {
        print("\(index) and \(name)")     //        index is treated as a function and i or any other iterator uou use will be a local variable
    }                                    //            |
//    print("\(index) and \(name)")        //   ->   (function) and Tanmay    ->     consider it as a reference to function which it is not getting    ->    variable jiska scope just destroy hua hai (reference count becomes 0)
}
printFiveNumbers()

// variable shodaowing
var point = 100

for index in 1...3 {
    var point = 100                   //     ->      point is local variable here
    print("Sum is \(point + index)")
}
print("Point is \(point)")

var name : String? = "Tanmay"
if let name = name {                 //  ->    optional binding
    print("Name is \(name)")
}
else {
    print("Name value is nil")
}

struct Person {
    var name : String
    var id : Int
    
    init (name: String, id: Int) {
        self.name = name         //    ->    self stores address of the current object
        self.id = id
    }
}

var personObject = Person(name: "Tanmay", id: 10)

print("Name \(personObject.name)")
print("ID \(personObject.id)")








