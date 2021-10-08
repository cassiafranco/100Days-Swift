import UIKit

// 7 - 100 Days Swift
// Closures with parameters
/*
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}


func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()
result("London")

let count = 1...3
// Exercicios


var numbers = [1,2,3,4,5,6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}


let score = 100
for count in 10..<13 {
    print("I'm counting to \(count)")
}


for i in 1...8 {
    if i < 3{
        print("\(i) is a small number")
    }
}


func read() {
    while true {
        print("Reading")
        break
    }
}
read()
 

func list() {
    for i in 4...6{
        print("Episode \(i)")
    }
}

func scoreGoal(number: Int) -> Int {
    print("GOOOLLL \(number)")
    return number
}
scoreGoal(number: 1)
scoreGoal(number: 2)

func nameString(name: String, idade: Int) -> Void {
    print("Meu nome é: \(name), e idade é: \(idade)")
    return
}
nameString(name: "Cassia", idade: 30)
nameString(name: "Matheus", idade: 32)

func printWelcome(){
    print("Hi there!")
}
printWelcome()

func shipOrders() {
    let orders = [1,2,3,4,5]
    for _ in orders {
        print("Shipping order \(orders)")
    }
}
shipOrders()

// 8 - Day Swift
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)


struct Sport{
    var name: String
    var isOlimpicSport: Bool
    
    var olympicStatus: String {
        if isOlimpicSport {
            return "\(name) is an Olympic sport"
        }else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlimpicSport: true)
print(chessBoxing.olympicStatus)


struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
 

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

 */

