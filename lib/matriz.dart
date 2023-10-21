void main() {
  //caso não haja o tipo pode-se colocar List<dynamic> aceitando todos os tipos
  //definindo o tipo da lista atraves de List<...>
  // valores da lista são como em um array [0, 1, 2];
  //conceito de matriz
  final List<List<String>> listNames = [
    ['Jacob', 'Felipe', 'Maria'],
    ['Gabriel', 'Francisco']
  ];

  final name = listNames[0][1];
  final list = listNames[1][0];
  print(name);
  print(list);
}
