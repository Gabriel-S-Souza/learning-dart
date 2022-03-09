class Cliente {
  late String nome;
  late String email;

  //Construtor c/ sintaxe mais simples para atribuir as propriedades
  Cliente();

  //Construtores nomeados... Assim pode-se criar N construtores
  Cliente.nomeEmail(this.nome, this.email);
  Cliente.nome(this.nome);
  Cliente.email(this.email);
}

void main() {
  //Usando o construtor default: está disponível p/ todas as classes
  var cliente = Cliente();

  //Usando o construtor nomeado
  var cliente2 = Cliente.nomeEmail("Fulano", "dsbjkdba@nfkansklf");

  print(cliente2.nome == "Fulano");
  print(cliente2.email == "fulano@gmail.com");
}
