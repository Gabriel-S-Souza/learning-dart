void main() {

  // Definindo função com parâmetros opicionais, pois apresentam valçores padrão
  // Os parâmetros list e gifts apresentam valores padrão:
  void doStuff(
      {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'primeiro': 'papel',
        'segundo': 'algodão',
        'terceiro': 'couro'
      }}) {
    print('list:  $list');
    print('gifts: $gifts');
  }

  doStuff(gifts: {"olá": "mundo"});
}
