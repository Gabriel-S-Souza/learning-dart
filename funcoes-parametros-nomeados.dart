void main() {

  // Definindo função com parâmetros opicionais --> apresentam valores padrão
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
