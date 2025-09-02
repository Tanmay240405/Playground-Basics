import UIKit

//enum
//grouping of all related items used with type safety

enum CompassPoint {
    case north
    case south
    case west
    case east
}
//without type enum
//enum CoffeeSize {
//    case small
//    case medium
//    case large
//}

enum Coffeesize {
    case small, medium, large
}
var MyCoffeeSize: CoffeeSize = .medium       // type inference

var MyCoffeeSize1: CoffeeSize = .medium
MyCoffeeSize1 = .large

switch MyCoffeeSize {
case .small:
    print("I have ordered small coffee")
case .medium:
    print("I have ordered medium coffee")
case .large:
    print("I have ordered large coffee")
}

if MyCoffeeSize == .medium {
    print("I ordered medium coffee")
}


struct Movei {
    var title: String
    var releaseYear: Int?
    var genre: Genre
}

enum Genre {
    case action, comedy, romance, horror
}

let Inception = Movei(title: "Inception", releaseYear: 2010, genre: .action)

if let releaseYear = Inception.releaseYear {
    print("the movie \(Inception.title) was released in \(releaseYear)")
}
else {
    print("no info")
}

//enum with type

enum CoffeeSize2 {
    case small
    case medium
    case large
}

enum CoffeeType: String {
    case latte = "Creamy Latte"//------------------------->raw value of enum
    case cappauccino = "espresso cappaccino"
    case macchiato = "Cold brew macchiato"
}

struct CoffeeOrder {
    var size: CoffeeSize2
    var type: CoffeeType
    var payment: PaymentMethod
}

func giveOrder(_ order: CoffeeOrder) {
    print("I ordered a \(order.type.rawValue) \(order.size) size cofee \(order.payment.description)")
}
let myOrder = CoffeeOrder(size: .medium, type: .latte, payment: .creditCard(number: "11298309123", expiryDate: "12/2029"))

giveOrder(myOrder)

enum PaymentMethod {
    case cash
    case ApplePay(deviceID: Int)
    case creditCard(number: String, expiryDate: String) //-----------------associated values/ properties
    var description: String {//--------------------------> custom string convertible protocol
        
        switch self {
        case .cash:
            return "Payment through cash"
        case let .ApplePay(deviceID)://------------------------------------------> use let cause it has a argument
            return "Payment through Apple Pay with deviceID \(deviceID)"
        case let .creditCard(number, expiryDate):
            return "Payment through credit card with number \(number) and expiry \(expiryDate)"
        }
    }
}

var myPayment: PaymentMethod = .creditCard(number: "10235483649", expiryDate: "12/2027")


enum CoffeeSize: String, CaseIterable {//--------------> case Iterable
    case small = "small"
    case medium = "medium"
    case large = "large"
}

let numberOfChoices = CoffeeSize.allCases.count
print("number of choices are \(numberOfChoices)")
for sizes in CoffeeSize.allCases {
    print(sizes.rawValue)
}


//

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let bestPlanet: Planet = .earth
print(bestPlanet.rawValue)

//-------->recursive

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    
//    switch self {
//    case let .addition(<#T##ArithmeticExpression#>, <#T##ArithmeticExpression#>):
//        print("the sum is \(<#T##ArithmeticExpression#> + <#T##ArithmeticExpression#>)")
//    case let .mul
//    }
}

//(5 + 4) * 2

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression)-> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
