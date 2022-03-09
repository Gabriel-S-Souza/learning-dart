void main() {
  
  // int é Object?
  print(int is Object);
  print(dynamic is Object);
  
  //Negação do is
  print(12 is! int);
  
  //as
  //Devido a tipagem dinamica, não se têm acesso as propriedades
  //e métodos no tempo de desenvolimento
  dynamic pessoa = Pessoa();
  
  //Instanciando pessoa como a classe Pessoa
  //Assim o autocompplete já dá acesso à propriedade saudar e previne
  //de usar propriedades e métodos que não existem
  print((pessoa as Pessoa).saudar);  

}

class Pessoa {
  var saudar = "Olá mundo";
}

//saída: 
//true
//true
//false
//Olá mundo