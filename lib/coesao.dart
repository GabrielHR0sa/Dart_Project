/*
Uma instância dentro de outra instância, mas sem acoplamento com
a outra instância.
Valor de B é passado a A, e conseguimos acessar o método e B
através de A.*/

void main() {
  final c = C();
  final b = B();
  final a = A(c); //=> a recebendo b = Teste, a recebendo c = correcao
  print(c is B); //=> true
  a.b.printName();
}

abstract class Iprint {
  void printName();
}

class A {
  final Iprint b;
  A(this.b);
}

class B implements Iprint {
  @override
  void printName() {
    print(('Teste'));
  }
}

//mesmo sendo filho de B, pode-se conciderar como B
class C implements Iprint {
  @override
  void printName() {
    print("Correcao");
  }
}
