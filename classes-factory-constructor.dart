class Funcionario {
  final String nome;

  Funcionario(this.nome);

  //o factory constructor é utilizado para retornar instancias de outras subclasses ou caches
  factory Funcionario.criarInstancia(String nome, String tipo) {
    if (tipo == 'G') return Gerente(nome);
    if (tipo == 'E') return Engenheiro(nome);
    else return Funcionario(nome);
  }
}

class Gerente extends Funcionario {
  //Assim, estou pegando o construtor da superclasse
  Gerente(String nome) : super(nome);
}

class Engenheiro extends Funcionario {
  Engenheiro(String nome) : super(nome);
}

void main() {
  //Instanciando funcionario com a subclasse Gerente
  Funcionario funcionario = Funcionario.criarInstancia("Felipe", "G");
  print(funcionario);
}

//saída: Instance of 'Gerente'