void main() {
  //Não estou passando o parâmetro posicional opicional
  print(criarLogin('emaildeexemplo@gamail.com'));
}

//Funcão com um parâmetro obrigatório e um opicional --> []
String criarLogin(String email, [String? senha]) =>
    '''
      usuário logado!
      $email
      senha: ${senha == null ? geraSenhaAutomatica() : senha}
    ''';

String geraSenhaAutomatica() => '123456';
