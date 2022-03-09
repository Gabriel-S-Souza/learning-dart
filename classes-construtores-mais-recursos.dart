class Cliente {
  late String nome;
  late String sobrenome;
  late String nomeCompleto;

  //Fazendo a atribuição de nomeCompleto diretamente através do :
  Cliente(this.nome, this.sobrenome) : nomeCompleto = "$nome $sobrenome";
}

void main() {
  Cliente cliente = Cliente("Gabriel", "Souza");

  print(cliente.nomeCompleto);
}

// saída: Gabriel Souza