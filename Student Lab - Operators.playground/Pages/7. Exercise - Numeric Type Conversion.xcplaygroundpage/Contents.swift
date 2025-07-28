/*:
## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
var x = 10
var y = 3.2
var multipliesAsInteger = x * Int(y)
print(multipliesAsInteger)
print("it wasnt multiplying cause one was an integer and one was a double and it is not allowed in swift")

//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
let a = 10
let b = 3.2
var multipliesAsDouble = Double(a) * b
print(multipliesAsDouble)

//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
print("yes cause when we multiply integer and a double as a integer we ignore decimal part and we dont ignore it while multiplying as a double")

/*:
[Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
 */
