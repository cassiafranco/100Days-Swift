import UIKit

// 11 -  Swift
/*
protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable{
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation {}

extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


protocol Identifiable {
    var id: String {get set}
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}
let twostrws = User(id: "twostraws")
twostrws.identify()

protocol Climbable {
    var height: Double { get }
    var gradient: Int { get }
}

protocol Mailable {
    var width: Double { get set }
    var height: Double { get set }
}

protocol Learnable {
    var difficulty: [Double] { get  set }
}

// 12 - Swift

var age: Int? = nil

age = 38

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)")
}


let str = "5"
let num = Int(str)!

print(str)


func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    }else {
        return nil
    }
}

let result = username(for: 2)

let names = ["John","Paul","George","Ringo"]

let beatle = names.first?.uppercased()


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try! checkPassword("sekrit")
    print("OK!.")
}

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9{
            self.id = id
        }else{
            return nil
        }
    }
}

let age = Person(id: "a")


class Animal {}
class Fish: Animal {
    func makeNoise() {
        print("Gooc!")
    }
}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(),Dog(),Fish(),Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

for pet in pets {
    if let fish = pet as? Fish {
        fish.makeNoise()
    }
}

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "hate"
    case .snow:
        return "Neve"
    }
}

getHaterStatus(weather: WeatherType.cloud)
getHaterStatus(weather: .snow)


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
    
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, . wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))



struct Person {
    var clothes: String
    var shoes: String
    
    func describe(){
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
print(taylor)


class Person {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}


class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sing() {
        print("la la la")
    }
}

var taylor = Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()
print("A cantora \(taylor.name) tem \(taylor.age) anos")


class CountrySinger: Singer{
    
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylor1 = CountrySinger(name: "Taylor", age: 26)
print("A cantora \(taylor1.name) tem \(taylor1.age) anos")

class HeavyMetalSinger: Singer{
    var noiseLevel: Int
     init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short kids"



class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

*/

let vw = UIView()

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
