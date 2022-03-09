//Cria uma superclasse p/ a classe Cliente
class ClienteModel {
  late String nome;
  ClienteModel.fromJson(Map data) {
    // pegando o valor contido na chave "nome"
    this.nome = data["nome"];
  }
  String diz(String mensagem) {
    return "${this.nome} diz $mensagem";
  }
}

//Herda (extendes) a ClienteModel
class Cliente extends ClienteModel {
  late String nome;

  //Cria um construtor que utiliza um construtor nomeado da superclasse
  // O super permite acessar as propriedades e métodos da superclasse
  Cliente(Map data) : super.fromJson(data);
}

void main() {
  final cliente = Cliente({"nome": "Fulano"});
  print(cliente.nome);
  print(cliente.diz("Olá mundo"));
}

// saída:
// Fulano
// Fulano diz Olá mundo