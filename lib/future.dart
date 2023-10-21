void main() async {
  print('A');
  await fetch();
  print('B');
  await fetch();
  print('C');
}

/*
assincronicidade
a future respeita a sequencia assincrôna
a partir do await,
ele espera finalizar o future 
para depois continuar a sua sequência
*/

Future fetch() async {
  await Future.delayed(Duration(seconds: 1));
  //print('1 Segundo');
}
