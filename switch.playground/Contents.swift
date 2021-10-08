import UIKit

do {
    let rating = 20
    
    switch rating {
    case 0:
        print("Pessimo")
    case 1:
        print("Ruim")
    case 2:
        print("Regular")
    case 3:
        print("Bom")
    case 4:
        print("Muito bom")
    case 5:
        print("Excelente")
    default:
        print("Nota nao é valida")
    }
}
