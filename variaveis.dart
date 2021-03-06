void main() {
  print('int:');
  int idade = 27;
  int ano = 2022;
  for (var i = 0; i < 4; i++) {
    print('Em $ano tenho $idade anos');
    idade++;
    ano++;
  }
  print('\n');

  print('double:');
  // double: equivalente ao float
  double salario = 1250.50;
  print("Salario:  $salario");

  double divisao = 5 / 2;
  // a variavel resultado precisa ser um double, pois na sua atribuição está
  // sendo usada uma variável double também
  double resultado = divisao * 4;
  print(resultado);
  print('\n');

  print('String:');
  String nome = "Gabriel Souza";
  print(nome);
  print('\n');

  print('var/tipo automático:');
  // O próprio dart irá tipar com a inferênccia de tipos, mas não poderá ser alterado com atribuição
  var idade2 = 25;
  var pi = 3.14;
  var texto = "Eu tenho $idade2 anos e o valor de pi é $pi";
  print(texto);
  print('\n');

  print('dynamic:');
  // Valor inferido através da inferência de tipos e que é dinâmico, o seja, pode ser alterado
  // O tipo dynamic tem um CUSTO COMPUTACIONAL, pois o programa irá usar MAIS capacidade
  // computacional para identificar qual tipo a variável está assumindo naquele momento
  // por isso usar muito dynamic é uma má prática
  dynamic idade3 = 25;
  // Tipo alterado de forma dinâmica
  idade3 = idade3 + 0.5;
  var texto2 = "Eu tenho $idade3 anos";
  print(texto2);
  print(meuNome.runtimeType);
}

String? meuNome;
