//Esse código utiliza a instrução rethrow, que permite propagar a excessão "para fora"
void main(args) {
  try {
    try {
      gerarErro(int.parse(args[0]));
    } on Valor1Exception {
      rethrow; //Uso do rethrow
    } on Valor2Exception {
      print("Tratando a excessão: Valor 2");
    } on Valor3Exception {
      print("Tratando a excessão: Valor 3");
    } on Exception catch (e) {
      print("Não foi possível: $e");
    } catch (e) {
      print("Houve um erro: $e");
    } finally {
      print("Fianlizando");
    }
  } on Valor1Exception catch (e) {
    print("Tratando a excessão: Valor 1, capturada/propagada pelo rethrow");
    print(e);
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