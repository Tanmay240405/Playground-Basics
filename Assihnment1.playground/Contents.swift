import UIKit


//1)
var arr = [1, 2, 3, 2, 5, 6]


var i = 0
while i < arr.count {
    var count = 0
    var j = 0
    while j < arr.count {
        if arr[i] == arr[j] {
            count += 1
        }
        if arr[i] == arr[j] && count > 1 {
            arr.remove(at: j)
            j -= 1
        }
        j += 1
    }
    i += 1
}

print(arr)


//2)

var arr1 = ["Tanmay", "UJFUJ:OK", "HVUTCDSU"]
var count1 = 0
for i in arr1 {
    var lowerstr = i.lowercased()
    for j in lowerstr {
        if j == "a" || j == "e" || j == "i" || j == "o" || j == "u" {
            count1 += 1
        }
    }
}

print(count1)


//4)

var dict = ["Tanmay": 50, "Rishabh": 30]

for (name, marks) in dict {
    if marks < 40 {
        dict.removeValue(forKey: name)
    }
}

print(dict)

//5)

var twoDArr = [[1, 2, 3], [3, 4, 6], [3, 4, 9]]

for i in twoDArr {
    var maxV = i[0]
    for j in 1..<i.count {
        if i[j] > maxV {
            maxV = i[j]
        }
    }
    print("Max in row: \(maxV)")
}

//6)

var arr2 = [2, 3, 4, 5, 6, 7]
var evenArr: [Int] = []
var oddArr: [Int] = []
var dict3 = Dictionary<String, [Int]>()

for i in arr2 {
    if i % 2 == 0 {
        evenArr.append(i)
    }
    else {
        oddArr.append(i)
    }
}
dict3.updateValue(evenArr, forKey: "Even")
dict3.updateValue(oddArr, forKey: "Odd")

print(dict3)



//7)


var freqArr =  ["tanmay", "wefre", "tanmay", "rishabh"]

for i in freqArr {
    var modstr = i.lowercased()
    var count = 0
    for j in 0..<freqArr.count {
        if modstr == freqArr[j].lowercased() {
            count += 1
        }
    }
    print("Count of \(i) is: \(count)")
}


//8)

var dict4 = ["a": 1, "b": 4, "c": 3]
print(dict4)
for (name, value) in dict4 {
    dict4.updateValue(value * value, forKey: name)
}

print(dict4)

//9)

var dict5 = ["a": 1, "b": 4, "c": 3]
print(dict5)
for (name, value) in dict5 {
    dict5.updateValue(value * 10, forKey: name)
}

print(dict5)


//10)

var dict6 = ["a": 1, "b": 4, "c": 3, "d": 0]
print(dict6)
for (name, value) in dict6 {
    if value == 0 {
        dict6.removeValue(forKey: name)
    }
}

print(dict6)
