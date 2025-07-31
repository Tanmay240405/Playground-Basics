import UIKit

//structure is a user defined type

struct Person {
    var name: String                                    // properties
    var age: Int
    func say(){
        print("Hello name is \(name)")                 //adding method in structure -> has direct access to properties -> no need for dot syntax
    }
}
var person = Person(name: "ergfe", age: 19)          //creating instances
print(person.name)                                  //accessing properties through instances
print(person.age)
person.age = 20
print(person.age)
person.say()


//initializer

let string = String.init()              //""
let integer = Int.init()                //0
let bool = Bool()                       //False

struct Odometer {
    var count: Int = 0
}
let odometer = Odometer()                   //()-> initializer(Constructor) -> Default
print(odometer.count)

let odo1 = Odometer(count: 2700)            // memberwise initializer

struct Bank {
    var number: Int
    var amount: Double = 0
}

let user1 = Bank(number: 10, amount: 0)
var user2  = Bank(number: 11)

print(user2.amount)

//custom initializer

// self is used to hold address of current object

// by default it consider memberwise constructor

struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }
}

let currentTemp = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)

print(currentTemp.celsius)
print(boiling.celsius)

//MUTATING KEYWORD

struct Odometer1 {                                                          //mutate help to change count
    var count: Int = 0                                                      //without mutate we cannot change count even if it is var
    
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}




var odo = Odometer1()
print(odo.count)
odo.increment()
print(odo.count)
odo.increment(by: 15)
print(odo.count)
odo.reset()
print(odo.count)

struct Temp1 {
    var celcius: Double
    var Fahrenheit: Double
    var kelvin: Double
    
}


struct Temp2 {
    var celsius: Double
    var fahrenheit: Double {                                            //Computed Properties
        celsius * 1.8 + 32
    }
}
                                                                        //not able to do it in function
let currTemp = Temp2(celsius: 0.0)                                      //memory allocated to only celsius -> instance is let then also allow it to change -> not updating just computing -> WHERE IS FAHRENHEIT STORED AFTER COMPUTING?? -> it is assigned when we write curr.fahrenheit -> otherwise it is stored in on fly memory after being computed
print(currTemp.fahrenheit)                                              //fahrenheit also now accessable through struct

//PROPERTY OBSERVER

struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps \(newValue)")                    //assign newValue to totalSteps -> and totalsteps will become oldvalue...
    
        }
        didSet {                                                            // cannot access newvalue in it
            if totalSteps > oldValue {
                print ("Added \(totalSteps - oldValue) steps")
            }
        }
    }
    mutating func increment() {
        totalSteps += 1
    }
}

var counter = StepCounter()
counter.totalSteps = 40
counter.totalSteps = 120
counter.totalSteps = 120
counter.increment()                                 //totalsteps becomes 121

//TYPE PROPERTIES AND METHODS

struct Temp3 {
    @MainActor static var colling = 0                                                       //static means only one copy will be created
    @MainActor static var boilingPoint = 100.0
    static func convertedFromFahrenheit(_ tempInFahrenheit: Double) -> Double {
        (((tempInFahrenheit - 32) * 5) / 9)
    }
}

let boilingPoint = Temp3.boilingPoint
let currentTemp1 = Temp3.convertedFromFahrenheit(99)
let positiveNumber = abs(-4.14)

print(boilingPoint)
print(currentTemp1)
print(positiveNumber)
let temp4 = Temp3.convertedFromFahrenheit(99.0)
print(temp4)






