import UIKit
//1 - Day Swift
//var, String, Int , aspas duplas, Double and Booleans, let,
var str = "Hello, playground"

str = "Good Bye"

var age = 38

var population = 80_000_000

var pi = 3.141

var awesome = true

var score = 85

var string = "Your score was \(score)"

let taylor = "swift"

//Type annotations

let album: String = "Reputation"
let year: Int  = 38
let height: Double = 1.78
let taylorRocks : Bool = true

//2 - Day Swift
//Array

let john = "John Lennon"
let paul = "Paul MacCartney"
let george = "George Harrison"
let ringo = "Ringo Star"

let beatles = [john,paul,george,ringo]

beatles[1]

//Set - Como eles não são ordenados, você não pode ler valores de um conjunto usando posições numéricas como faz com matrizes

let colors = Set(["red","green","blue"])

let colors2 = Set(["red","green","blue","blue","red","blue"])

//Tuplas

var name = (first: "Taylor", last: "Swift" )

name.0
name.last
name.self

//Matrizes vs conjuntos vs tuplas

let address = (house: 555, street: "Taylor swift Avenue", city: "Nashiville")

let set = Set(["aardvark","astronaut","azalea"])

let pythons = ["Eric","Cassia","John","Michael","Terry","Terry"]

//Dicionario

let heigths = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73

]
//Valores padrão do dicionário

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Charlote": "Vanilla"
]

favoriteIceCream["Paul"]

//Criação de coleções vazias

var teams = [String: String]()
teams["Paul"] = "Red"

var result = [Int]()
result = [3,2,1]

var words = Set<String>()
words = ["Cassia"," Carol","Matheus"]

var numbers = Set<Int>()
result = [5,4,3,2,1]

var scores = Dictionary<String, Int>()

var results = Array<Int>()
results = [1,2,3,4]

//Enum

enum Result {
    case sucess
    case failure
}

let result2 = Result.failure

// Valores enum

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
let singing = Activity.singing(volume: 4)
let running = Activity.running(destination: "Brazil")

// Valores brutos em enum

enum Planet: Int {
    case mercury
    case earth
    case venus
    case mars
    case saturn
    case uranus
    case jupiter
    case neptune
    case sun
    case pluto
    case moon
    case asteroid
}

let earth = Planet(rawValue: 1)

let sun = Planet(rawValue: 8)
