import UIKit

// Swift 8
/*
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()



let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
print(toys)

toys.firstIndex(of: "Buzz")
print(toys.sorted())

toys.remove(at: 0)
print(toys)


let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

let sing = {
    print("Tralala")
}
sing()

let walkDog = {
    print("Let's go to the park")
}
walkDog()

let upgrade = {
    print("Upgrading...")
}
upgrade()

func fetchData(then parse: (String) -> Void) {
    let data = "Success!"
    parse(data)
}
fetchData { (data: String) in
    print("Data received: \(data)")
}

func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}
fix(item: "root") { (bill: Int) in
    print("You want $ \(bill) for that? Outrageous!")
}

func study(reviseNotes: (String) -> Void) {
    let notes = "Napoleon was a short, dead dude"
    for _ in 1...10{
        reviseNotes(notes)
    }
}
study { (notes: String)in
    print("I'm reading my notes: \(notes)")
}

func nameSobrenome(name: (String) -> Void) {
    let nameCompleted = "Cassia Franco Moreira"
    for _ in 1...5{
        name(nameCompleted)
    }
}
nameSobrenome { (nameCompleted: String) in
    print("O meu nome completo é: \(nameCompleted)")
}


func createInterface(positioning: ([String]) -> Void) {
    print("Creating some buttons")
    let buttons = ["Button 1","Button 2", "Button3"]
    positioning(buttons)
}
createInterface {(buttons: [String]) in
    for button in buttons {
        print("I'n place \(button) here...")
    }
}

func getDirections(to destination: String, then travel: ([String]) -> Void) {
    let directions = [
        "Go straight ahead",
        "Turn left onto Station Road",
        "Turn right onto High Street",
        "You have arrived at \(destination)"
    ]
    travel(directions)
}
getDirections(to: "London") { (directions: [String]) in
    print("I'm getting my car.")
    for direction in directions {
        print(direction)
    }
}
func nameKids(name: ([String]) -> Void) {
    let nameString = ["Emily","Gabriela","Camila"]
    name(nameString)
}
nameKids { (names: [String]) in
    for name in names {
        print("O nome de cada aluna é: \(name)")
    }
}
 
 
func getMeasurement(handler: (Double) -> Void) {
    let measurement = 32.2
    handler(measurement)
}
getMeasurement { (measurement: Double) in
    print("It measures \(measurement)")
}

func makeSale(signContract: (String) -> Void) {
    let clientName = "Apple"
    print("\(clientName) should buy our product.")
    print("You're interested? Great! Sign here.")
    signContract(clientName)
}
makeSale { (client: String) in
    print("We agree to pay you $100 million.")
    print("Signed, \(client)")
}

func processPrimes(using closure: (Int) -> Void) {
    let primes = [2, 3, 5, 7, 11, 13, 17, 19]
    for prime in primes {
        closure(prime)
    }
}
processPrimes { (prime: Int) in
    print("\(prime) is a prime number.")
    let square = prime * prime
    print("\(prime) squared is \(square)")
}

struct User {
    var name = "Anonymous"
    var age: Int
}
let twostraws = User(name: "Paul", age: 38)
print(twostraws)


struct Book {
    var title: String
    var author = "Unknown"
    var pageCount = 0
}

// 9 - Day Swift

struct User {
    var username: String
    
    init() {
        username = "Anonynous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"


struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

ed.familyTree


struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
        
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)


struct Person {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ed = Person(id: "12345")


class Attendee {
    var badgeNumber = 0
    var name = "Anonymous"
    var company = "Unknown"
    init(badge: Int) {
        self.badgeNumber = badge
    }
}


class Podcast {
    var hosts: [String]
    init(hosts: [String]) {
        self.hosts = hosts
    }
}
*/

class Singer {
    var name: String
    var favoriteSong: String
    init(name: String, song: String) {
        self.name = name
        self.favoriteSong = song
    }
}
let taylor = Singer(name: "Taylor Swift", song: "Blank Space")
