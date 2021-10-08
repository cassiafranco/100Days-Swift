import UIKit

protocol View {
    var body: View {get}
}

struct ContentView: View {
    var body: View
    
}

struct Person {
    
    // MARK: - Atributos
    
    var nome: String
    var sobrenome: String
    
    var nomeSobreme: String {
        return "O nome é:\(nome)\(sobrenome)"
    }
}



var aluno = Person(nome: "Cassia", sobrenome: "Franco")
var novoAluno = aluno

print(aluno.nome)
print(novoAluno.nome)

aluno.nome = "Carol"
print("O nome do novo aluno é:",aluno.nome)
print("O nome do novo aluno é:",novoAluno.nome)

//MARK: - Struct => copia do valor => Value Type
