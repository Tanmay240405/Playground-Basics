

var greeting = "Hello"

var score = 100
var mscore: Float = 400/3
var fscore = Float(score) + mscore
print("score is \(fscore)")
var anotherScore = 100/3
print(anotherScore)

//score = score + 52
score += 52
print(score)

var x = 5
var y = 15
var z = 3
var result = (x + y)/z
print(result)


(1,"z")<(2,"a") //true

// Ternary Conditional operator

var validAge = 21
var myAge = 18 < validAge ? "hESSS A MINORRRRRR" : "Adult"

var abc: String? = nil  //optional value
var abcd = abc ?? "Tanmay"

var defauktColor: String? = "Red"
var finalPColor = defauktColor ?? "Blue"
print(finalPColor)      //prints red

for index in 1...10{
    print("2 x \(index) = \(2*index)")
}

var list = [11, 22, 45, 62, 202]

for i in list[2...4]{
    if i%2==0{
        print("Number \(i) is divisible by 2")
    }
    else{
        print("Number \(i) not divisible")
    }
}

