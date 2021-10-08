import UIKit
/*
var nota = 0
var falta = 0



func media (nota: Int , falta: Int) {
    if nota >= 6 && falta <= 25 {
        print("Passou")
    }else{
        print("Reprovou")
    }
}

media(nota: 0  , falta: 0)
media(nota: 0, falta: 25)
media(nota: 0, falta: 26)
media(nota: 6, falta: 0)
media(nota: 6, falta: 25)
media(nota: 6, falta: 26)
media(nota: 10, falta: 0)
media(nota: 10, falta: 25)
media(nota: 10, falta: 26)


func calculadora (purchaseCost: Int) {
    if purchaseCost > 50 {
        print("Cobrada a taxa de 15$")
    }else {
        print("Taxa é isenta")
    }
}

calculadora(purchaseCost: 50)

//11 quilos bebe e 77 centimetros de altura
// height -- altura do bebe 77
// weight -- peso bebe 11


var numFreezing = 0

var temps = [12,15,18,9,8,11,13,12,14,22]

for temp in temps {
    if temp < 12 {
        print("temperatura abaixo de 12 graus")
        numFreezing += 1
    }
}


var i = 1

while (i >= 11) {
    print(i)
    i += 1
}


var words = [1,2,3,4,5,6]
var score = 0

for word in words {
    if word >= 5 {
        score += 3
        
    }else{
        if word >= 4 {
            score += 2
        }else {
            if word >= 3{
                score + 1
            }
        }
    }
}
print(score)


// FizzBuzz
/*
 PERGUNTA 9 DE 10
 O trecho de código mais abaixo é uma implementação em pseudocódigo do famoso desafio de lógica "FizzBuzz". Essa implementação utiliza a expressão matemática MOD, que significa o seguinte:

 MOD - Calcula o resto de uma divisão entre duas variáveis. Por exemplo, considerando a expressão a MOD b. Se a variável a for divisível pela variável b, então o resto será 0 (ZERO), caso contrário a expressão irá retornar o resto da divisão.

 Se chamarmos a função (procedure, em pseudocódigo) com o parâmetro a seguir, qual será o resultado produzido pelo código mais abaixo?

 fizzbuzz(15)*/

var i = 0

for i in i..<100{
    if (i % 3 == 0) && (i % 5 == 0){
        print("FizzBuzz")
        if (i % 3 == 0) != (i % 5 == 0){
            print("Fizz")
            if (i % 5 == 0) != (i % 3 == 0){
                print("Buzz")
            }
        }
    }
}


let scores = [100,80,85]

let formatted: [()] = scores.map {
    print("You scores was \($0)")
}

func lengthOf(strings: [String]) -> [Int] {
    var result = [Int]()
    for string in strings {
        result.append(string.count)
    }
    return result
}




func lengthOf(strings: [String]) -> [Int] {
    return strings.map{$0.count}
}


let numbers = [1,2,3,4,5]

let odd = numbers.filter {
    $0 % 2 == 1
}

let ints = [9,5,3,5]

let counts = ints.map {($0,1)}
print(counts)


let values = [
    "country" : "Spain",
    "capital" : "Madrid"

]
UserDefaults.standard.register(defaults: values)


let fruits : Set = ["Apple","Orange","Pear"]
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912834576]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

for fruit in fruits {
    print(fruit)
}

for person in contacts{
    print(person.key)
}

for number in halfOpenRange{
    print(number)
}

for number in closedRange{
    print(number)
}


var day = 256

if day == 256 {
    print("Happy Programmers Day")
}


//1- In this function, what are this and toThat examples of ?
func add(this x: Int, toThat y: Int) -> Int {
    
}

//R. parameter names

//2- What data type is this an example of?

let vals = ("val",1)

//R. a tupla

//3- What is wrong with this code?

if let s = String.init("Alguma string") {
    print(s)}

//R. This String initializer does not return an optional.


//4- What is wrong with this code?

for (key,value) in [1: "one", 2: "two"]{
   print(key,value)}
 
//R. the interaction variable is invalid


//5- What is wrong with this code?

var x = 5
x = 10.0

//R. You cannot assign a Double to a variable of type Int.



//6- How many paramenters does the initializer for test have?

struct Test{
    var score: Int
    var date : Date
}
// R. Structs do not have initializers.
//7. How can you sort this array?

var valss = [1,2,3]

//R. vals.sort(by: < )

//8- What is the value of names after this code is executed?

let names = ["Bear","Joe","Clark"]
names.map( (s) -> String in
           return s.uppercased()
)

//R. This code contains an error.


//9- What is the correct way to add a value to this array?

var strings = [1,2,3]

strings.append(4)
strings.insert(5, at: 1)

strings += [5]

//R. all of these answers

//10- In this code, what is width an example of?

class Square {
    var heigth: Int = 0
    var width: Int {
        return heigth
    }
}
// R. a computed property

//11- What is the value of numbers in the code below?

let numbers = [1,2,3,4,5,6] .filter{$0 % 2 == 0}
print(numbers)
// R. [2,4,6]

//12- What is the raw/underlying type of this enum?

enum Direction {
    case north, south, east, west
}

//R. Any

//13- How many values does vals have after this code is executed?

var vals1: Set<String> = ["4","5","6"]
vals1.insert("5")

//R. This code contains an error.

//14- What does this code print?

enum Positions: Int {
    case first, second, third, other
}

print(Positions.other.rawValue)
//R. 3

//15- What does this code print?

let namesa = ["Bear","Tony","Svante"]
print(namess[1] + "Bear")

//R. TonyBear
*/

var str = " \"Play ground\""
debugPrint(str)
print(str)
//print(str.replacingOccurrences(of: "\"", with: ""))
//print(str)
//debugPrint(str.replacingOccurrences(of: "\"", with: ""))
