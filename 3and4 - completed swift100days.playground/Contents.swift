import UIKit

// 3 - Say Swift
/*
// Operadores aritmeticos
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divid = firstScore / secondScore

let remainder = 13 % secondScore

// Sobrecarga de operador

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fakes"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George","Ringo"]
let beatles = firstHalf + secondHalf

//Operadores de atribuicao composto

var score = 95
score -= 5

var quota = "The rain in Spain falls mainly on the "
quota += "Spanirds"

//Operadores de comparaçao

let primeiroScore = 6
let segundoScore = 4

primeiroScore == segundoScore
primeiroScore != segundoScore
primeiroScore >= segundoScore
primeiroScore <= segundoScore

"Taylor" <= "Swift"
"Ana" < "Cassia"

//Condicoes

let firstCard = 0
let secondCard = 0

if firstCard + secondCard == 20 {
    print("A soma é 20")
}else if firstCard + secondCard == 25 {
    print("A soma é 25")
}else if firstCard + secondCard == 10 {
    print("A soma é 10")
}else {
    print("Nenhum numero valido")
}

//Condicoes de combinacao

let age1 = 30
let age2 = 32

if age1 > 18 && age2 > 18 {
    print("Sao maiores de 18 anos")
}else{
    print("Sao menores de 18 anos")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// Operador ternário


let primeiroCard = 10
let segundoCard = 10

print(primeiroCard == segundoCard ? "O cartao é valido" : "O cartao é invalido")
if primeiroCard == segundoCard {
    print("O Cartao é valido")
}else{
    print("O cartao é invalido")
}

// Declarao em troca - Switch

let tempo = "sol"

switch tempo {
case "chuvoso":
    print("O tempo está chovendo")
case "nublado":
    print("O tempo está nublado")
case "sol":
    print("O tempo está com sol")
    fallthrough
default:
    print("Aproveite o dia")
}

let idade = 0

switch idade {
case 18:
    print("Ele tem 18 anos")
case 17:
    print("é menor de idade")
case 20:
    print("Tem 20 anos")
case 30:
    print("Tem 30 anos")
default:
    print("Nao foi encontrado")
}

//Operadores de Alcance

let resultado = 80

switch resultado {
case 0..<50:
    print("Voce falhou ")
case 50..<85:
    print("Fez OK")
    fallthrough
default:
    print("FIM DO RESULTADO")
}

// 4 - Day Swift

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red","1989","Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players Game")

for _ in 1...5 {
    print("play")
}

//Whille loops

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

var number2 = 20

while number2 <= 40 {
    print(number2)
    number2 += 1
}

//Repetir Loop

var number3 = 21

repeat {
    print(number3)
    number3 += 1
}while number3 <= 20
    print("READY OR NOT, HERE I COME!")
while false {
    print("This is false")
}


// Saindo do Loops

var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1

}


//Saindo de varios Loops

outerLoop: for i in 1...10 {
    for j in 1...10{
        let product = i * j
        print("\(i) *\(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Pular Itens

for i in 1...10 {
    if i % 2 == 1{
        continue
    }
    print(i)
}
*/
// Loops infinito

var counter = 0

while true {
    print("")
    counter += 1
    
    if counter == 20 {
        break
    }
}
