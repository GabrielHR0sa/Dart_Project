void main() {
  //a estrutura do Map é dupla
  //com a Key sendo String e o valor dinâmico
  final Map<String, dynamic> map = {
    'name': 'Jacob',
    'age': 30,
  };

  //pegando somente as chaves do Map
  final listKeys = map.keys.toList();
  print(listKeys[1]);
  print('-----');

  print(map['age']);
  print(map['name']);
  print('-----');

  final entry = map.entries.toList()[1];

  print(entry.key);
  print(entry.value);
}