import UIKit

var greeting = "Hello, playground"

//CLASSES AND INHERITANCE

//class Vehicle {
//    var name: String = "Tanmay"         //--------------> have to giv e default value
//    
//}
//
//let myCar = Vehicle()                       //-------------> reference type -----> not changing the reference
//print(myCar.name)
//myCar.name = "ABC"
//print(myCar.name)

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    func myName() {
        print("Hello my name is \(name)")
    }
}
var person = Person(name: "Tanmay")
person.myName()

//INHERTANCE

//base class ------------> Vehicle
//    |
//    |
//super class-------------> Car
//    |
//    |
//sub class-------------->SUV

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        "travelling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        
    }
}

class Bicycle: Vehicle {
    var hasBasket = true
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Speed is \(bicycle.currentSpeed)")

class Tandem: Bicycle {
    var numPassaenger = 0
}

let tandem = Tandem()
tandem.numPassaenger = 10
tandem.currentSpeed = 12.2
print("\(tandem.numPassaenger) \(tandem.currentSpeed)")

class Train: Vehicle {
    override func makeNoise() {
        print("choo choo")
    }
}
let train = Train()
train.makeNoise()

class Car: Vehicle {
    override var description: String {
        "travelling at \(currentSpeed) km/h"
    }
}

var car = Car()
car.currentSpeed = 15.0
print(car.description)

//----------------------> in swift we cannot do multiple inheritance in a class at a same time


class Bike {
    var currentSpeed: Int
    var engine: String
    init (currentSpeed: Int, engine: String) {
        self.currentSpeed = currentSpeed
        self.engine = engine
    }
}
class SuperBike: Bike {
    var topSpeeed: Int
    init(currentSpeed: Int, topSpeed: Int, engine: String) {
        self.topSpeeed = topSpeed
        super.init(currentSpeed: currentSpeed, engine: engine)
    }
}

var ducati = SuperBike(currentSpeed: 19, topSpeed: 50, engine: "1000cc")

print(ducati.topSpeeed)
print(ducati.currentSpeed)
print(ducati.engine)

//• When you create an instance of a class:
//- Swift returns the address of that instance
//- The returned address is assigned to the variable
//• When you assign the address of an instance to multiple variables:
//- Each variable contains the same address
//- Update one instance, and all variables refer to the updated instance

//Automatic reference counter







//ASSIGNMENT





class Event {
    var eventName: String
    var location: String
    var date: String
    var organiser: String
    init(eventName: String, location: String, date: String, organiser: String) {
        self.eventName = eventName
        self.location = location
        self.date = date
        self.organiser = organiser
    }
    func scheduleEvent() {
        
    }
    func rescheduleEvent(date: String) {
        
    }
    func displayInfo() {
        
    }
}

class Satsang: Event {
    var speakerName: String
    var bhajanList: String
    var duration: Int
    init(speakerName: String, bhajanList: String, duration: Int, eventName: String, location: String, date: String, organiser: String) {
        self.speakerName = speakerName
        self.bhajanList = bhajanList
        self.duration = duration
        super.init(eventName: eventName, location: location, date: date, organiser: organiser)
    }
    func addBhajan(bhajanName: String) {
        
    }
    func displayBhajan(date: Int) {
        
    }
    override func displayInfo() {
        
    }
}

class concert: Event {
    var performer: String
    var genre: String
    var ticketPrice: Int
    var seatsAvailable: Bool
    init(performer: String, genre: String, ticketPrice: Int, seatsAvailable: Bool, eventName: String, location: String, date: String, organiser: String) {
        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.seatsAvailable = seatsAvailable
        super.init(eventName: eventName, location: location, date: date, organiser: organiser)
    }
    func bookTicket(count: Int) {
        
    }
    func isSoldOut() {
        
    }
    override func displayInfo() {
        
    }
}










