void main() {
  //Uso de closure

  var saudacao = saudar('Mundo');
  print(saudacao('Olá'));
}

dynamic saudar(current) {
  return (String last) => '$last $current';
}

//saída: Olá Mundo