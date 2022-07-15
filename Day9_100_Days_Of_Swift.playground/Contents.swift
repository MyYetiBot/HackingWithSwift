import UIKit

//1.Initializers
struct User {
    var username: String

    init() { //własny init
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"


struct Employee {
    var name: String
    var yearsActive = 0
}

// Wtedy możemy stworzyć User na dwa sposoby:
let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)


//Zachowaj memberwaise init i stworz też własny w rozszerzeniu:
struct Employee2 {
    var name: String
    var yearsActive = 0
}

extension Employee2 { //włąsny init w rozszeżeniu
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// Tworzenie nazwanego pracownika działa:
let roslin2 = Employee2(name: "Laura Roslin")

// Tak samo działa tworzenie anonima:
let anon = Employee2()


// 2.Referring to the current instance

struct Student {
    var name: String
    var bestFriend: String

    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class…")
        self.name = name //self.name - odwołuje się do properties, a name: do parametru.
        self.bestFriend = bestFriend
    }
}

// Bez sefl - dodaj swoje nazwy, które są różne od nazwy properties. Wygląda dużo gorzej.
struct Student2 {
    var name: String
    var bestFriend: String

    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class…")
        name = studentName
        bestFriend = studentBestFriend
    }
}

//3. Lazy properties

// Zacznijmy od stworzenie struct:
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

//Możemy użyć te FamilyTree struct jako property w Person struct:
struct Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")
ed.familyTree

//4. Static properties and methods

struct Student3 {
    static var classSize = 0 //ile studentów jest w klasie
    var name: String

    init(name: String) {
        self.name = name
        Student3.classSize += 1 //za każdym utworzeniem nowego studenta - +1 w classSize
    }
}

var ania = Student3(name: "Anna") //+1 classSize
var madzia = Student3(name: "Magdalena") //+1 classSize
print(Student3.classSize)

//5. Access Control

struct Person2 {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
            return "My social security number is \(id)"
        }
}

var edmund = Person2(id: "12345")
//nie można odczytać, gdyż jest private: edmund.id

// Tylko metody w środku w funkcji mogą odczytać private id.
print(edmund.identify())


