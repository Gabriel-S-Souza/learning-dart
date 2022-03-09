void main(List<String> args) {
  // throw Exception("Uma excessão");

  //Ao ser lançada a excessão, é mostrado o retorno do método toString no terminal

  final valor = int.parse(args[0]);

  handleConta(valor);
}

handleConta(valor) {
  const saldo = 100;
  if (valor > saldo) {
    final excedente = valor - saldo;
    throw SaldoInsuficienteException(excedente);
  }
  if (valor < 0) {
    throw ValorNegativoException(valor);
  } else
    print('Saldo retirado: R\$ $valor');
}

//A documentação mostra que, em vez de usar o construtor Exception() diretamente,
//é melhor criar classes que representam as excessões para a regra de negócio trabalhada:
class SaldoInsuficienteException implements Exception {
  final excedente;
  SaldoInsuficienteException(this.excedente);
  @override
  String toString() {
    return 'SaldoInsuficienteException => excedente: R\$ $excedente';
  }
}

class ValorNegativoException implements Exception {
  final valor;
  ValorNegativoException(this.valor);
  @override
  String toString() {
    return 'ValorNegativoException: $valor';
  }
}
