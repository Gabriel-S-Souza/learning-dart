void main() {
  //CONCATENAÇÃO: estas formas funcionam:
  print('he' 'llo');
  print('he' + 'llo');
  print('he'
      'llo');
  print('he' + 'llo');

  //INTERPOLACAO
  String linguagem = 'Dart ';
  String framework = 'e Flutter';
  print('Estou estudando ' + linguagem);
  print('Estou estudando $linguagem');
  print('Estou estudando ${linguagem + framework}');
}
