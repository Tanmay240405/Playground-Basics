import UIKit

//Guard -> proper tracking of your code -> when we want an early exit -> opposite of "if"

var birthdayIdToday = true
var invitedGuest = ["Guest1"]
var cakeCandle = true
@MainActor
func sing() {
    guard birthdayIdToday else {
        print("no bday")
        return
    }
    guard !invitedGuest.isEmpty else {
        print("it is a family party")
        return
    }
    guard cakeCandle else {
        print("cake is not lit")
        return
    }
    print("Sing Happy bday")
}

sing()

func Book(title: String?, price: Double?, pages: Int?) {
    guard let theTitle = title,
          let thePrice = price,
          let thePages = pages else {
        print("Missing Name, Price or Pages")
        return
    }
    print("\(theTitle) cost is \(thePrice) and has \(thePages) pages")
}

Book(title: nil, price: 100, pages: 100)
Book(title: "Harry Potter", price: 1100, pages: 100)

func Divide(number: Int, divisor: Int) {
    guard divisor != 0 else {
        print("Divisor is zero")
        return
    }
    print("Answer is \(number / divisor)")
}

Divide(number: 10, divisor: 2)
Divide(number: 10, divisor: 0)
