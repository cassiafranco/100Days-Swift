import UIKit

/*
var value = 30

do {
    //Variaveis criadas dentro de um escopo/bloco sao chamadas de variaveies locais
    //Esta só podem ser acessadas dentro do bloco
    let localValue = 10
    print(localValue)
    print(value)
    
    value -= 10

}

print(value)
*/


do {
    let age = 40
    var group = ""
    
    if age < 5{
        group = "Mirim"
    }else if age <= 10 {
        group = "Infantil"
    }else if age < 20 {
        group = "Sub Vinte"
    }else  if age <= 40 {
        group = "Profissional"
    }else {
        group = "Master"
    }
    let message = "O atleta tem \(age) anos de idade e pertence a categoria \(group)"
    print(message)
}

