void main() {
  List listOfNumbers = [1, 2, 3, 4, 5, 6, 7];

  //Função passada como parâmetro
  listOfNumbers.forEach(printElement);
  //Variável que recebeu função passada como parâmetro
  listOfNumbers.forEach(doubleElement);
}

void printElement(element) => print(element);

//Função atribuída a uma variável. NOTA: pode ser tipada como final
var doubleElement = (element) => print(element * 2);
