import UIKit

// variavéis e constantes
// criar métedos
// trabalhar com herença
// implementar protocolos...


class Pessoa {
    //MARK: - Atributos
    
    var nome: String
    var sobrenome: String
    
    //MARK: - Método construtor
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
}

let aluno = Pessoa(nome: "Cassia", sobrenome: "Franco")
let novoAluno = aluno

print("Alunos: --")
print(aluno.nome)
print(novoAluno.nome)
aluno.nome = "Carol"
print("Após alteracao: --")
print(aluno.nome)
print(novoAluno.nome)

// Classe: Trabalhando com a referencia do objeto = Reference type...
