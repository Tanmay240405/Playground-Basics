import UIKit

//Gaurd -> proper tracking of your code -> when we a=want a early exit

var birthdayIdToday = true
var invitedGuest = ["Guest"]
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
