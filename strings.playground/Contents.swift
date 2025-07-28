import UIKit


print("i am learning \"Swift\"")
print("i am learning \nSwift")
print("i\t\t am\t\t learing\t\t swift")
var str2 = ""

if str2.isEmpty{
    print("Empty string")
}

let firstname = "Tanmay"
let lastname = "Saxena"
print(firstname + " " + lastname)           // + is only operator in swift which is overloaded 12%
print("\(firstname) is 19 years old")
print("5 X 6 = \(5*6)")

var book = "abc"
var price: Double = 500
var noOfBooks: Double = 10
print("Price of \(noOfBooks) \(book) is \(noOfBooks * price)")
print("tax is 12% so total tax on \(noOfBooks) books is \((12 / 100) * (price) * (noOfBooks))")
print("Total Price is \((noOfBooks * price) + (12 / 100) * (price) * (noOfBooks))")

let month = "July"
let otherMonth = "July"
let allMonth = "juy"
if month == otherMonth{
    print("Same String")
}
if month != allMonth{
    print("They are not same")
}

if firstname.lowercased() == "TANmay".lowercased(){
    print("They are same name")
}

let password = "12345678"
print(password.hasSuffix("678"))

let learniong = "I am learning Swift"
if learniong.contains("Swift"){
    print("I am Loving It")
}

let passwordLenght = password.count
print(passwordLenght)

let operation = "success"
switch operation.lowercased() {
case "success":
    print("I am able to learn IB Basic and String successfuly")
default:
    print("Not able to learn")
}

let lion = "🦁"
print(lion)
print("u{2665}")
