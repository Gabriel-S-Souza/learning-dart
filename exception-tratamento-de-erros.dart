//Esse código recebe argumentos de linha de comando e lança e trata as excessões
//e erros conforme os argumentos que forem ou não inseridos ao executá-lo
void main(args) {
  try {
    gerarErro(int.parse(args[0]));
  } 
  //Filtrando as excessões para criar tratamentos específicos
  on Valor1Exception {
    print("Tratando a excessão: Valor 1");
  } 
  on Valor2Exception {
    print("Tratando a excessão: Valor 2");
  } 
  on Valor3Exception {
    print("Tratando a excessão: Valor 3");
  } 
  on Exception catch (e) {
    print("Não foi possível: $e");
  } 
  catch (e) {
    print("Houve um erro: $e");
  }
}

void gerarErro(int numero) {
  //lança apenas uma, como o return
  if (numero == 1) {
    throw Valor1Exception();
  }
  if (numero == 2) {
    throw Valor2Exception();
  }
  if (numero == 3) {
    throw Valor3Exception();
  }
  if (numero == 4) {
    throw Error();
  }

  throw Exception();
}

// Cariando classes de exceptions específicas para a regra de negócio
// Essas classes implementam a classe Exception
class Valor1Exception implements Exception {}

class Valor2Exception implements Exception {}

class Valor3Exception implements Exception {}


//entrada: dart exception-tratamento-de-erros.dart 1
//saída: Tratando a excessão: Valor 1