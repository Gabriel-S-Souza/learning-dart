void main() {
  //Uso de closure

  var saudacao = saudar('Olá');
  print(saudacao('Mundo'));
}

dynamic saudar(last) {
  return (String current) => '$last $current';
}

//saída: Olá Mundo