void main() {
  print('Condicionais');
  int idade = 15;

  bool maior_de_idade = idade >= 18;
  bool acompanhado = true;

  if (maior_de_idade) {
    print('Maior de idade, pode entrar');

  } 
  else if (!maior_de_idade && acompanhado) {
    print('Menor de idade acompanhado de um maior, pode entrar');
  }
   else {
    print('Menor de idade, não pode entrar');
  }
}
