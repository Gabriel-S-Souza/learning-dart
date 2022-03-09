void main() {
  //Operador de tratamento de nulo ??

  //Caso essa variavel seja nula mostre isto...
  var numero = getNumero() ?? "Não têm número";
  
 
  print(numero);
}

int? getNumero() => null;

//saída: Não têm número