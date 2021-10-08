import UIKit


// Operadores lógicos
// Sao operadores especiais que operam somente sobre valores do tipo Bool e retornam um valor de Bool.
// Funcionam em cima do conceito de tabela verdade e apenas que diz que situacoes distinas retornam valores distintos

// Operador E /AND (&&) - Binário
// Este operador só retorna verdadeiro quando ambos os operandos forem verdadeiros

print(true && true)
print(true && false)
print(false && true)
print(false && false)

// Operador OU/ OR ( || ) - Binário
// Este operador só retorna falso quando ambos os
// operandos forem falsos

print(true || true)
print(true || false)
print(false || true)
print(false || false)

// Operador NEGACAO / NOT ( ! ) - Unário
// Altera o valor do booleano

print(!false)
print(!true)

// Procedencia dos operadores logicos
// 1 - Operador NOT
// 2 - Operador AND
// 3 - Operador OR

let A = false
let B = true
let C = true
let D = false

// Situacoes

print(A || B && C )
print(A && B || C && D)
print(A && B && C || D)
print(A || B && C || D)
print(B || D && D && C || A)


