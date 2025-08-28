import UIKit

//Type casting and inspection

class Employee {
    var name: String
    init(name: String) {
        self.name = name
    }
    func work(){
        print("\(self.name) Employee is working")
    }
}
class Manager: Employee {
    func conductingMeeting() {
        print("manager is conduction meeting ")
    }
}

class Developer: Employee {
    func writeCode() {
        print("Employee is writing code")
    }
}

class Intern: Employee {
    func learn() {
        print("Intern is learning")
    }
}

var staff: [Employee] = [Manager(name: "Tanmay"), Developer(name: "Saatvik"), Intern(name: "Ishan"), Manager(name: "Nevin")]

for index in staff {
    index.work()
}

// intern "is a" Employee -> represent inheritance  ->  generalisation
// "has a "  ->  association  -> creating object of one class inside another class

//Inpect -> inspecting type of an object (Employee)  -> it is manager or intern etc

for person in staff {                                    //  Inspection
    if person is Manager {
        print("\(person.name) is a manager")
    }
    else if person is Developer {
        print("\(person.name) is a developer")
    }
    else if person is Intern {
        print("\(person.name) is a intern")
    }
}

//Type casting -> converting one type (class) to another -> to call functions of manager in loop (conducting meeting) -> represent employee (Tanmay) as a manager
//    |
//representig one type as another
//    |
//    |
//type conversion  ->  downcasting  ->  representing a base class as a sub or inherited class  ->  going top to bottom
    
for person in staff {
    if let manager = person as? Manager {
        manager.conductingMeeting()
    }
    else if let developer = person as? Developer {
        developer.writeCode()
    }
    else if let intern = person as? Intern {
        intern.learn()
    }
}

//force casting -> no use of if let
//if cast is wrong it will crash
//use when you know the type of cast


for person in staff {
    if person is Developer {
        let developer = person as! Developer
        developer.writeCode()
    }
}



//Any  ->  type allias

var items: [Any] = [5, "Bill", 6.7]

for item in items {
    if let i = item as? Int {
        print(item)
    }
}




