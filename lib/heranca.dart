void main() {
  Animal dog = Dog();
  final animal1 = Cat();
  print(dog.sound());
  print(animal1.sound());
}

//classe pai
class Animal {
  String name = '';
  double weight = 0;

  String sound() {
    return 'no sound';
  }
}

//classe filho
class Dog extends Animal {
  //sobrescrevendo o método do pai
  @override
  String sound() {
    return 'au au';
  }
}

//classe filho
class Cat extends Animal {
  //sobrescrevendo o método do pai
  //polimorfismo, mesmo método informações diferentes
  @override
  String sound() {
    return 'miau';
  }
}
