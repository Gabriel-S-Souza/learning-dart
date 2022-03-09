void main() {
  //Operador de tratamento de nulo (??=)

  var numero = getNumero();
  
  //Caso essa variável seja nula, atribua a ela este valor
  numero ??= 15;
  
  print(numero);
}

int? getNumero() => null;

//saída: 15