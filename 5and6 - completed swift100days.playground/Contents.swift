import UIKit

// 5 - Day
// Funcoes
/*
func printHelp() {
    let message = """
        Welcome to myApp!
        
        Run this app inside a directory of images and MyApp,
        will resize them all into thumbnails
        """
    print(message)
}

printHelp()

func messageLove() {
    let message = """
        Bem vindo a minhas mensagens,
        estou oferecendo gratuito.
        """
    print(message)
}
messageLove()


//Paramento em funcoes

func square(number: Int) {
    print(number * number)
}
square(number: 8)

func numberOne(number: Int) {
    print(number + number)
}
numberOne(number: 9)

func nameString(name: String) {
    print(name)
}
nameString(name: "Cassia Franco Moreira")
nameString(name: "Matheus Madureira")

func nameParticipe(name: String, idade: Int) {
    print("O nome é: \(name) e idade é: \(idade)")
}
nameParticipe(name: "Cassia Franco", idade: 30)
nameParticipe(name: "Ana Carolina Ribeiro", idade: 29)

//Retornando os valores

func square(number: Int) -> Int{
    return number*number
}
let result = square(number: 8)
print(result)

func nameString(name: String) -> String{
    return name
}
let result1 = nameString(name: "Cassia")
print(result1)
 
//Rotulos de parametros

func sayHello(to name: String) {
    print("Hello,\(name)!")
}

sayHello(to: "Taylor")

func nameHello(to name: String){
    print("Olá, \(name)!")
}
nameHello(to: "Cassia")

func great(_ person: String) {
    print("Hello, \(person)!")
}
great("Taylor")

func nameStar(_ person: String) {
    print("Hello,\(person)")
}
nameStar("Pink")


func greet(_ person: String, nicely: Bool = true) {
    if nicely == true{
        print("Hello \(person)!")
    }else {
        print("Oh no, \(person)")
    }
}
greet("Pink", nicely: false)


//Funcoes e variaveis

func square(numbers: Int...){
    for number in numbers {
        print("\(number) saqured is \(number * number)")
    }
}

square(numbers: 5,4,3,2,1)

// Escrevendo funcoes de arremesso - PASSWORD

enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
}catch {
    print("You can't use that password.")
}


//Paramentros inout

func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)


//6 - Day Swift

//Clousures

let driving = {
    print("I'm driving in my car ")
}
driving()




let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
 
let drivingWhithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWhithReturn("London")
print(message)

 //Closures sintaxes

let driving = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}
travel(action: driving)


func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { place in
    "I'm going to \(place) in my car"
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

*/

func travel() -> (String) -> (Void){
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result = travel()
result("London")
result("Paris")
result("Chile")



