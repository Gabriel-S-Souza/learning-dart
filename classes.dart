void main() {
  //As classes também são tipos específicos
  Funcionario funcionario = Funcionario();
  print(funcionario.salrio);
  print(funcionario.registrarPonto());
}

class Funcionario {
  //Propriedades
  String nome = "Fulano";
  int idade = 23;
  double salrio = 4000.00;
  bool contaAtiva = true;

  //Métodos
  DateTime registrarPonto() {
    //Retorna uma instância [DateTime] com data e hora atuais no fuso horário local
    return DateTime.now();
  }
}


//saída: 
// 4000.0
// 2022-03-09 13:04:45.111561