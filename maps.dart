void main() {
  var comentarios = {
    'Python': 'comentário Python',
    'Dart': 'comentário Dart',
    'Javascript': 'comentário Javascript',
  };

  //Iterando sobre as chaves. Também existe o método .value
  comentarios.keys.forEach((element) {
    print(element);
  });

  Map<String, String> comentarios2 = Map<String, String>();

  //           chave          valor
  comentarios2['Java'] = 'comentário Java';

  print(comentarios2);
}
